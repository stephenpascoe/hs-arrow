{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE OverloadedStrings #-}
module HsArrow ( dumpArrowInfo
       	       , testStatus
               )
       where

-- TODO : quasi-quotes with intero?


import qualified Language.C.Inline.Cpp as C
import qualified Data.ByteString as BS
import Data.Monoid
import Control.Monad.Except
import Control.Exception (bracket)
import Foreign.Marshal.Alloc (alloca, free)
import Foreign.Ptr (Ptr, castPtr, plusPtr)
import Foreign.C.String (CString)
import Foreign.Storable


C.context $ C.cppCtx <> C.bsCtx

C.include "<iostream>"
C.include "arrow/api.h"
C.include "arrow/io/api.h"
C.include "arrow/ipc/reader.h"


-- | Model arrow::StatusCode error codes.
data StatusCode = OK
               | OutOfMemory
               | KeyError
               | TypeError
               | Invalid
               | IOError
               | UnknownError
               | NotImplemented
               | SerializationError
               | PythonError
               | PlasmaObjectExists
               | PlasmaObjectNonexistent
               | PlasmaStoreFull
                 deriving (Show, Eq)

statusCode :: C.CChar -> StatusCode
statusCode (C.CChar 0) = OK
statusCode (C.CChar 1) = OutOfMemory
statusCode (C.CChar 2) = KeyError
statusCode (C.CChar 3) = TypeError
statusCode (C.CChar 4) = Invalid
statusCode (C.CChar 5) = IOError
statusCode (C.CChar 9) = UnknownError
statusCode (C.CChar 10) = NotImplemented
statusCode (C.CChar 11) = SerializationError
statusCode (C.CChar 12) = PythonError
statusCode (C.CChar 20) = PlasmaObjectExists
statusCode (C.CChar 21) = PlasmaObjectNonexistent
statusCode (C.CChar 22) = PlasmaStoreFull

data ArrowException = ArrowException { code :: StatusCode
                                     , message :: BS.ByteString
                                     }
                                     deriving Show


type EitherArrow = Either ArrowException

-- TODO : Context with StatusCode

-- | Error handling
--
-- Arrow functions generally return a arrow::Status object by value.  This is awkward
-- to handle with inline-c therefore we consistently allocate a pointer to a Status
-- and return it to haskell where we extract the contents and deallocate the pointer.
--

-- | StatusPtr : A pointer to an arrow Status object which was allocated within C++
newtype StatusPtr = StatusPtr (Ptr ())

testStatus :: C.CChar -> BS.ByteString -> IO (EitherArrow ())
testStatus code message = bracket acquire freeStatus (mkResult ())
  where acquire = fmap StatusPtr [C.block|
      void* {
        using namespace arrow;

        std::string cMsg($bs-ptr:message, $bs-len:message);
        Status *ret = new Status(StatusCode($(char code)), cMsg);

        std::cout << ret->ToString() << std::endl;

        return (void *)ret;
      }
    |]

-- | mkResult : Convert a return value and a status returned from C++ into either
--              an exception or the value
mkResult :: a -> StatusPtr -> IO (EitherArrow a)
mkResult val (StatusPtr ptr) = do
  code <- [C.exp| char { (char)((arrow::Status *)$(void *ptr))->code() } |] :: IO C.CChar
  cmessage <- [C.exp| char* { (char*)((arrow::Status *)$(void *ptr))->message().c_str() } |]
  message <- BS.packCString cmessage
  return $ case (statusCode code) of
    OK -> Right val
    code  -> Left $ ArrowException { code = code, message = message }

freeStatus (StatusPtr ptr) = free ptr


dumpArrowInfo :: BS.ByteString -> IO (EitherArrow ())
dumpArrowInfo fileName = bracket acquire freeStatus (mkResult ())
  where
    acquire = fmap StatusPtr [C.block| void* {
      using namespace arrow;

      // Convert arguments
      std::string fileName ($bs-ptr:fileName, $bs-len:fileName);

      // Initialise local variables
      std::shared_ptr<io::ReadableFile> raFile;
      std::shared_ptr<ipc::RecordBatchFileReader> reader;
      Status *status = new Status();

      *status = io::ReadableFile::Open(fileName, &raFile);
      if (!status->ok()) {
        // retStatus->CopyFrom(status);
        return (void *)status;
      }

      *status = ipc::RecordBatchFileReader::Open(raFile, &reader);
      if (!status->ok()) {
        // retStatus->CopyFrom(status);
	return (void *)status;
      }
      std::cout << "Record batches " << reader->num_record_batches() << std::endl;
      return (void *)status;
    } |]


{-
dumpArrowInfo fileName = alloca $ \ptrptr -> do
    ret <- [C.block| char {
      using namespace arrow;

      // Convert arguments
      std::string fileName ($bs-ptr:fileName, $bs-len:fileName);

      // Initialise local variables
      std::shared_ptr<io::ReadableFile> raFile;
      std::shared_ptr<ipc::RecordBatchFileReader> reader;
      Status status;

      status = io::ReadableFile::Open(fileName, &raFile);
      if (!status.ok()) {
      	std::string *msg = new std::string(status.ToString());
        *$(char **ptrptr) = (char *)(msg->c_str());
        return (char)status.code();
      }

      status = ipc::RecordBatchFileReader::Open(raFile, &reader);
      if (!status.ok()) {
      	std::string *msg = new std::string(status.ToString());
        *$(char **ptrptr) = (char *)(msg->c_str());
        return (char)status.code();
      }
      std::cout << "Record batches " << reader->num_record_batches() << std::endl;
      return (char)StatusCode::OK;
    } |]
    let status = statusCode ret
    if status == OK
      then return $ Right ()
      else do
        cMsg <- peek ptrptr
        msg <- BS.packCString cMsg
	free cMsg
        return $ Left (ArrowException { code = status, message = msg })
-}
