

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::io::FileOutputStream@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.FileOutputStream
    ( 

-- * Exported types
    FileOutputStream(..)                    ,
    IsFileOutputStream                      ,
    toFileOutputStream                      ,
    noFileOutputStream                      ,


 -- * Methods
-- ** new #method:new#

    fileOutputStreamNew                     ,




    ) where

import Data.GI.Base.ShortPrelude
import qualified Data.GI.Base.ShortPrelude as SP
import qualified Data.GI.Base.Overloading as O
import qualified Prelude as P

import qualified Data.GI.Base.Attributes as GI.Attributes
import qualified Data.GI.Base.ManagedPtr as B.ManagedPtr
import qualified Data.GI.Base.GError as B.GError
import qualified Data.GI.Base.GVariant as B.GVariant
import qualified Data.GI.Base.GValue as B.GValue
import qualified Data.GI.Base.GParamSpec as B.GParamSpec
import qualified Data.GI.Base.CallStack as B.CallStack
import qualified Data.Text as T
import qualified Data.ByteString.Char8 as B
import qualified Data.Map as Map
import qualified Foreign.Ptr as FP

import {-# SOURCE #-} qualified GI.Arrow.Interfaces.File as Arrow.File
import {-# SOURCE #-} qualified GI.Arrow.Interfaces.Writeable as Arrow.Writeable
import {-# SOURCE #-} qualified GI.Arrow.Objects.OutputStream as Arrow.OutputStream
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype FileOutputStream = FileOutputStream (ManagedPtr FileOutputStream)
foreign import ccall "garrow_file_output_stream_get_type"
    c_garrow_file_output_stream_get_type :: IO GType

instance GObject FileOutputStream where
    gobjectType _ = c_garrow_file_output_stream_get_type
    

-- | Type class for types which can be safely cast to `FileOutputStream`, for instance with `toFileOutputStream`.
class GObject o => IsFileOutputStream o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError FileOutputStream a) =>
    IsFileOutputStream a
#endif
instance IsFileOutputStream FileOutputStream
instance Arrow.OutputStream.IsOutputStream FileOutputStream
instance GObject.Object.IsObject FileOutputStream
instance Arrow.File.IsFile FileOutputStream
instance Arrow.Writeable.IsWriteable FileOutputStream

-- | Cast to `FileOutputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFileOutputStream :: (MonadIO m, IsFileOutputStream o) => o -> m FileOutputStream
toFileOutputStream = liftIO . unsafeCastTo FileOutputStream

-- | A convenience alias for `Nothing` :: `Maybe` `FileOutputStream`.
noFileOutputStream :: Maybe FileOutputStream
noFileOutputStream = Nothing

#if ENABLE_OVERLOADING
type family ResolveFileOutputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveFileOutputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFileOutputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFileOutputStreamMethod "close" o = Arrow.File.FileCloseMethodInfo
    ResolveFileOutputStreamMethod "flush" o = Arrow.Writeable.WriteableFlushMethodInfo
    ResolveFileOutputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFileOutputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFileOutputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFileOutputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFileOutputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFileOutputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFileOutputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFileOutputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFileOutputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFileOutputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFileOutputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFileOutputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveFileOutputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFileOutputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFileOutputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFileOutputStreamMethod "write" o = Arrow.Writeable.WriteableWriteMethodInfo
    ResolveFileOutputStreamMethod "writeTensor" o = Arrow.OutputStream.OutputStreamWriteTensorMethodInfo
    ResolveFileOutputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFileOutputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveFileOutputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFileOutputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFileOutputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFileOutputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFileOutputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFileOutputStreamMethod t FileOutputStream, O.MethodInfo info FileOutputStream p) => O.IsLabelProxy t (FileOutputStream -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveFileOutputStreamMethod t FileOutputStream, O.MethodInfo info FileOutputStream p) => O.IsLabel t (FileOutputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList FileOutputStream
type instance O.AttributeList FileOutputStream = FileOutputStreamAttributeList
type FileOutputStreamAttributeList = ('[ '("outputStream", Arrow.OutputStream.OutputStreamOutputStreamPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList FileOutputStream = FileOutputStreamSignalList
type FileOutputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FileOutputStream::new
-- method type : Constructor
-- Args : [Arg {argCName = "path", argType = TBasicType TUTF8, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The path of the file output stream.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "append", argType = TBasicType TBoolean, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "Whether the path is opened as append mode or recreate mode.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "FileOutputStream"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_file_output_stream_new" garrow_file_output_stream_new :: 
    CString ->                              -- path : TBasicType TUTF8
    CInt ->                                 -- append : TBasicType TBoolean
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr FileOutputStream)

{- |
/No description available in the introspection data./
-}
fileOutputStreamNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    {- ^ /@path@/: The path of the file output stream. -}
    -> Bool
    {- ^ /@append@/: Whether the path is opened as append mode or recreate mode. -}
    -> m (Maybe FileOutputStream)
    {- ^ __Returns:__ A newly opened 'GI.Arrow.Objects.FileOutputStream.FileOutputStream' or
  'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
fileOutputStreamNew path append = liftIO $ do
    path' <- textToCString path
    let append' = (fromIntegral . fromEnum) append
    onException (do
        result <- propagateGError $ garrow_file_output_stream_new path' append'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject FileOutputStream) result'
            return result''
        freeMem path'
        return maybeResult
     ) (do
        freeMem path'
     )

#if ENABLE_OVERLOADING
#endif


