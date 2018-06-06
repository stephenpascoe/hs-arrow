

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.SeekableInputStream
    ( 

-- * Exported types
    SeekableInputStream(..)                 ,
    IsSeekableInputStream                   ,
    toSeekableInputStream                   ,
    noSeekableInputStream                   ,


 -- * Methods
-- ** getSize #method:getSize#

#if ENABLE_OVERLOADING
    SeekableInputStreamGetSizeMethodInfo    ,
#endif
    seekableInputStreamGetSize              ,


-- ** getSupportZeroCopy #method:getSupportZeroCopy#

#if ENABLE_OVERLOADING
    SeekableInputStreamGetSupportZeroCopyMethodInfo,
#endif
    seekableInputStreamGetSupportZeroCopy   ,


-- ** readAt #method:readAt#

#if ENABLE_OVERLOADING
    SeekableInputStreamReadAtMethodInfo     ,
#endif
    seekableInputStreamReadAt               ,


-- ** readTensor #method:readTensor#

#if ENABLE_OVERLOADING
    SeekableInputStreamReadTensorMethodInfo ,
#endif
    seekableInputStreamReadTensor           ,




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
import {-# SOURCE #-} qualified GI.Arrow.Interfaces.Readable as Arrow.Readable
import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import {-# SOURCE #-} qualified GI.Arrow.Objects.InputStream as Arrow.InputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.Tensor as Arrow.Tensor
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype SeekableInputStream = SeekableInputStream (ManagedPtr SeekableInputStream)
foreign import ccall "garrow_seekable_input_stream_get_type"
    c_garrow_seekable_input_stream_get_type :: IO GType

instance GObject SeekableInputStream where
    gobjectType _ = c_garrow_seekable_input_stream_get_type
    

-- | Type class for types which can be safely cast to `SeekableInputStream`, for instance with `toSeekableInputStream`.
class GObject o => IsSeekableInputStream o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError SeekableInputStream a) =>
    IsSeekableInputStream a
#endif
instance IsSeekableInputStream SeekableInputStream
instance Arrow.InputStream.IsInputStream SeekableInputStream
instance GObject.Object.IsObject SeekableInputStream
instance Arrow.File.IsFile SeekableInputStream
instance Arrow.Readable.IsReadable SeekableInputStream

-- | Cast to `SeekableInputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSeekableInputStream :: (MonadIO m, IsSeekableInputStream o) => o -> m SeekableInputStream
toSeekableInputStream = liftIO . unsafeCastTo SeekableInputStream

-- | A convenience alias for `Nothing` :: `Maybe` `SeekableInputStream`.
noSeekableInputStream :: Maybe SeekableInputStream
noSeekableInputStream = Nothing

#if ENABLE_OVERLOADING
type family ResolveSeekableInputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveSeekableInputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSeekableInputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSeekableInputStreamMethod "close" o = Arrow.File.FileCloseMethodInfo
    ResolveSeekableInputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSeekableInputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSeekableInputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSeekableInputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSeekableInputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSeekableInputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSeekableInputStreamMethod "read" o = Arrow.Readable.ReadableReadMethodInfo
    ResolveSeekableInputStreamMethod "readAt" o = SeekableInputStreamReadAtMethodInfo
    ResolveSeekableInputStreamMethod "readTensor" o = SeekableInputStreamReadTensorMethodInfo
    ResolveSeekableInputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSeekableInputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSeekableInputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSeekableInputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSeekableInputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSeekableInputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveSeekableInputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSeekableInputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSeekableInputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSeekableInputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSeekableInputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveSeekableInputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSeekableInputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSeekableInputStreamMethod "getSize" o = SeekableInputStreamGetSizeMethodInfo
    ResolveSeekableInputStreamMethod "getSupportZeroCopy" o = SeekableInputStreamGetSupportZeroCopyMethodInfo
    ResolveSeekableInputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSeekableInputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSeekableInputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSeekableInputStreamMethod t SeekableInputStream, O.MethodInfo info SeekableInputStream p) => O.IsLabelProxy t (SeekableInputStream -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveSeekableInputStreamMethod t SeekableInputStream, O.MethodInfo info SeekableInputStream p) => O.IsLabel t (SeekableInputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList SeekableInputStream
type instance O.AttributeList SeekableInputStream = SeekableInputStreamAttributeList
type SeekableInputStreamAttributeList = ('[ '("inputStream", Arrow.InputStream.InputStreamInputStreamPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList SeekableInputStream = SeekableInputStreamSignalList
type SeekableInputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method SeekableInputStream::get_size
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "input_stream", argType = TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSeekableInputStream.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUInt64)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_seekable_input_stream_get_size" garrow_seekable_input_stream_get_size :: 
    Ptr SeekableInputStream ->              -- input_stream : TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"})
    Ptr (Ptr GError) ->                     -- error
    IO Word64

{- |
/No description available in the introspection data./
-}
seekableInputStreamGetSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsSeekableInputStream a) =>
    a
    {- ^ /@inputStream@/: A 'GI.Arrow.Objects.SeekableInputStream.SeekableInputStream'. -}
    -> m Word64
    {- ^ __Returns:__ The size of the file. /(Can throw 'Data.GI.Base.GError.GError')/ -}
seekableInputStreamGetSize inputStream = liftIO $ do
    inputStream' <- unsafeManagedPtrCastPtr inputStream
    onException (do
        result <- propagateGError $ garrow_seekable_input_stream_get_size inputStream'
        touchManagedPtr inputStream
        return result
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data SeekableInputStreamGetSizeMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsSeekableInputStream a) => O.MethodInfo SeekableInputStreamGetSizeMethodInfo a signature where
    overloadedMethod _ = seekableInputStreamGetSize

#endif

-- method SeekableInputStream::get_support_zero_copy
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "input_stream", argType = TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSeekableInputStream.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_seekable_input_stream_get_support_zero_copy" garrow_seekable_input_stream_get_support_zero_copy :: 
    Ptr SeekableInputStream ->              -- input_stream : TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"})
    IO CInt

{- |
/No description available in the introspection data./
-}
seekableInputStreamGetSupportZeroCopy ::
    (B.CallStack.HasCallStack, MonadIO m, IsSeekableInputStream a) =>
    a
    {- ^ /@inputStream@/: A 'GI.Arrow.Objects.SeekableInputStream.SeekableInputStream'. -}
    -> m Bool
    {- ^ __Returns:__ Whether zero copy read is supported or not. -}
seekableInputStreamGetSupportZeroCopy inputStream = liftIO $ do
    inputStream' <- unsafeManagedPtrCastPtr inputStream
    result <- garrow_seekable_input_stream_get_support_zero_copy inputStream'
    let result' = (/= 0) result
    touchManagedPtr inputStream
    return result'

#if ENABLE_OVERLOADING
data SeekableInputStreamGetSupportZeroCopyMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsSeekableInputStream a) => O.MethodInfo SeekableInputStreamGetSupportZeroCopyMethodInfo a signature where
    overloadedMethod _ = seekableInputStreamGetSupportZeroCopy

#endif

-- method SeekableInputStream::read_at
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "input_stream", argType = TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSeekableInputStream.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "position", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The read start position.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_bytes", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of bytes to be read.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Buffer"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_seekable_input_stream_read_at" garrow_seekable_input_stream_read_at :: 
    Ptr SeekableInputStream ->              -- input_stream : TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"})
    Int64 ->                                -- position : TBasicType TInt64
    Int64 ->                                -- n_bytes : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Buffer.Buffer)

{- |
/No description available in the introspection data./
-}
seekableInputStreamReadAt ::
    (B.CallStack.HasCallStack, MonadIO m, IsSeekableInputStream a) =>
    a
    {- ^ /@inputStream@/: A 'GI.Arrow.Objects.SeekableInputStream.SeekableInputStream'. -}
    -> Int64
    {- ^ /@position@/: The read start position. -}
    -> Int64
    {- ^ /@nBytes@/: The number of bytes to be read. -}
    -> m (Maybe Arrow.Buffer.Buffer)
    {- ^ __Returns:__ 'GI.Arrow.Objects.Buffer.Buffer' that has read
  data on success, 'Nothing' if there was an error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
seekableInputStreamReadAt inputStream position nBytes = liftIO $ do
    inputStream' <- unsafeManagedPtrCastPtr inputStream
    onException (do
        result <- propagateGError $ garrow_seekable_input_stream_read_at inputStream' position nBytes
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.Buffer.Buffer) result'
            return result''
        touchManagedPtr inputStream
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data SeekableInputStreamReadAtMethodInfo
instance (signature ~ (Int64 -> Int64 -> m (Maybe Arrow.Buffer.Buffer)), MonadIO m, IsSeekableInputStream a) => O.MethodInfo SeekableInputStreamReadAtMethodInfo a signature where
    overloadedMethod _ = seekableInputStreamReadAt

#endif

-- method SeekableInputStream::read_tensor
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "input_stream", argType = TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSeekableInputStream.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "position", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The read start position.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Tensor"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_seekable_input_stream_read_tensor" garrow_seekable_input_stream_read_tensor :: 
    Ptr SeekableInputStream ->              -- input_stream : TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"})
    Int64 ->                                -- position : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Tensor.Tensor)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
seekableInputStreamReadTensor ::
    (B.CallStack.HasCallStack, MonadIO m, IsSeekableInputStream a) =>
    a
    {- ^ /@inputStream@/: A 'GI.Arrow.Objects.SeekableInputStream.SeekableInputStream'. -}
    -> Int64
    {- ^ /@position@/: The read start position. -}
    -> m (Maybe Arrow.Tensor.Tensor)
    {- ^ __Returns:__ 
  'GI.Arrow.Objects.Tensor.Tensor' on success, 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
seekableInputStreamReadTensor inputStream position = liftIO $ do
    inputStream' <- unsafeManagedPtrCastPtr inputStream
    onException (do
        result <- propagateGError $ garrow_seekable_input_stream_read_tensor inputStream' position
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.Tensor.Tensor) result'
            return result''
        touchManagedPtr inputStream
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data SeekableInputStreamReadTensorMethodInfo
instance (signature ~ (Int64 -> m (Maybe Arrow.Tensor.Tensor)), MonadIO m, IsSeekableInputStream a) => O.MethodInfo SeekableInputStreamReadTensorMethodInfo a signature where
    overloadedMethod _ = seekableInputStreamReadTensor

#endif


