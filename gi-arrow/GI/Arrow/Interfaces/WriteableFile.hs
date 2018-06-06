

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Interfaces.WriteableFile
    ( 

-- * Exported types
    WriteableFile(..)                       ,
    noWriteableFile                         ,
    IsWriteableFile                         ,
    toWriteableFile                         ,


 -- * Methods
-- ** writeAt #method:writeAt#

#if ENABLE_OVERLOADING
    WriteableFileWriteAtMethodInfo          ,
#endif
    writeableFileWriteAt                    ,




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

import qualified GI.GObject.Objects.Object as GObject.Object

-- interface WriteableFile 
-- | Memory-managed wrapper type.
newtype WriteableFile = WriteableFile (ManagedPtr WriteableFile)
-- | A convenience alias for `Nothing` :: `Maybe` `WriteableFile`.
noWriteableFile :: Maybe WriteableFile
noWriteableFile = Nothing

#if ENABLE_OVERLOADING
type instance O.SignalList WriteableFile = WriteableFileSignalList
type WriteableFileSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "garrow_writeable_file_get_type"
    c_garrow_writeable_file_get_type :: IO GType

instance GObject WriteableFile where
    gobjectType _ = c_garrow_writeable_file_get_type
    

-- | Type class for types which can be safely cast to `WriteableFile`, for instance with `toWriteableFile`.
class GObject o => IsWriteableFile o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError WriteableFile a) =>
    IsWriteableFile a
#endif
instance IsWriteableFile WriteableFile
instance GObject.Object.IsObject WriteableFile

-- | Cast to `WriteableFile`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toWriteableFile :: (MonadIO m, IsWriteableFile o) => o -> m WriteableFile
toWriteableFile = liftIO . unsafeCastTo WriteableFile

#if ENABLE_OVERLOADING
instance O.HasAttributeList WriteableFile
type instance O.AttributeList WriteableFile = WriteableFileAttributeList
type WriteableFileAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type family ResolveWriteableFileMethod (t :: Symbol) (o :: *) :: * where
    ResolveWriteableFileMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWriteableFileMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWriteableFileMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWriteableFileMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWriteableFileMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWriteableFileMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWriteableFileMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWriteableFileMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWriteableFileMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWriteableFileMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWriteableFileMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWriteableFileMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWriteableFileMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWriteableFileMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWriteableFileMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWriteableFileMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWriteableFileMethod "writeAt" o = WriteableFileWriteAtMethodInfo
    ResolveWriteableFileMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWriteableFileMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWriteableFileMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWriteableFileMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWriteableFileMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWriteableFileMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWriteableFileMethod t WriteableFile, O.MethodInfo info WriteableFile p) => O.IsLabelProxy t (WriteableFile -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveWriteableFileMethod t WriteableFile, O.MethodInfo info WriteableFile p) => O.IsLabel t (WriteableFile -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- method WriteableFile::write_at
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "writeable_file", argType = TInterface (Name {namespace = "Arrow", name = "WriteableFile"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowWriteableFile.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "position", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The write start position.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TCArray False (-1) 3 (TBasicType TUInt8), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The data to be written.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_bytes", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of bytes to be written.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "n_bytes", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of bytes to be written.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_writeable_file_write_at" garrow_writeable_file_write_at :: 
    Ptr WriteableFile ->                    -- writeable_file : TInterface (Name {namespace = "Arrow", name = "WriteableFile"})
    Int64 ->                                -- position : TBasicType TInt64
    Ptr Word8 ->                            -- data : TCArray False (-1) 3 (TBasicType TUInt8)
    Int64 ->                                -- n_bytes : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
writeableFileWriteAt ::
    (B.CallStack.HasCallStack, MonadIO m, IsWriteableFile a) =>
    a
    {- ^ /@writeableFile@/: A 'GI.Arrow.Interfaces.WriteableFile.WriteableFile'. -}
    -> Int64
    {- ^ /@position@/: The write start position. -}
    -> ByteString
    {- ^ /@data@/: The data to be written. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
writeableFileWriteAt writeableFile position data_ = liftIO $ do
    let nBytes = fromIntegral $ B.length data_
    writeableFile' <- unsafeManagedPtrCastPtr writeableFile
    data_' <- packByteString data_
    onException (do
        _ <- propagateGError $ garrow_writeable_file_write_at writeableFile' position data_' nBytes
        touchManagedPtr writeableFile
        freeMem data_'
        return ()
     ) (do
        freeMem data_'
     )

#if ENABLE_OVERLOADING
data WriteableFileWriteAtMethodInfo
instance (signature ~ (Int64 -> ByteString -> m ()), MonadIO m, IsWriteableFile a) => O.MethodInfo WriteableFileWriteAtMethodInfo a signature where
    overloadedMethod _ = writeableFileWriteAt

#endif


