

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.MutableBuffer
    ( 

-- * Exported types
    MutableBuffer(..)                       ,
    IsMutableBuffer                         ,
    toMutableBuffer                         ,
    noMutableBuffer                         ,


 -- * Methods
-- ** new #method:new#

    mutableBufferNew                        ,


-- ** newBytes #method:newBytes#

    mutableBufferNewBytes                   ,


-- ** slice #method:slice#

#if ENABLE_OVERLOADING
    MutableBufferSliceMethodInfo            ,
#endif
    mutableBufferSlice                      ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype MutableBuffer = MutableBuffer (ManagedPtr MutableBuffer)
foreign import ccall "garrow_mutable_buffer_get_type"
    c_garrow_mutable_buffer_get_type :: IO GType

instance GObject MutableBuffer where
    gobjectType _ = c_garrow_mutable_buffer_get_type
    

-- | Type class for types which can be safely cast to `MutableBuffer`, for instance with `toMutableBuffer`.
class GObject o => IsMutableBuffer o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError MutableBuffer a) =>
    IsMutableBuffer a
#endif
instance IsMutableBuffer MutableBuffer
instance Arrow.Buffer.IsBuffer MutableBuffer
instance GObject.Object.IsObject MutableBuffer

-- | Cast to `MutableBuffer`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toMutableBuffer :: (MonadIO m, IsMutableBuffer o) => o -> m MutableBuffer
toMutableBuffer = liftIO . unsafeCastTo MutableBuffer

-- | A convenience alias for `Nothing` :: `Maybe` `MutableBuffer`.
noMutableBuffer :: Maybe MutableBuffer
noMutableBuffer = Nothing

#if ENABLE_OVERLOADING
type family ResolveMutableBufferMethod (t :: Symbol) (o :: *) :: * where
    ResolveMutableBufferMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveMutableBufferMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveMutableBufferMethod "copy" o = Arrow.Buffer.BufferCopyMethodInfo
    ResolveMutableBufferMethod "equal" o = Arrow.Buffer.BufferEqualMethodInfo
    ResolveMutableBufferMethod "equalNBytes" o = Arrow.Buffer.BufferEqualNBytesMethodInfo
    ResolveMutableBufferMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveMutableBufferMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveMutableBufferMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveMutableBufferMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveMutableBufferMethod "isMutable" o = Arrow.Buffer.BufferIsMutableMethodInfo
    ResolveMutableBufferMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveMutableBufferMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveMutableBufferMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveMutableBufferMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveMutableBufferMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveMutableBufferMethod "slice" o = MutableBufferSliceMethodInfo
    ResolveMutableBufferMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveMutableBufferMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveMutableBufferMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveMutableBufferMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveMutableBufferMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveMutableBufferMethod "getCapacity" o = Arrow.Buffer.BufferGetCapacityMethodInfo
    ResolveMutableBufferMethod "getData" o = Arrow.Buffer.BufferGetDataMethodInfo
    ResolveMutableBufferMethod "getMutableData" o = Arrow.Buffer.BufferGetMutableDataMethodInfo
    ResolveMutableBufferMethod "getParent" o = Arrow.Buffer.BufferGetParentMethodInfo
    ResolveMutableBufferMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveMutableBufferMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveMutableBufferMethod "getSize" o = Arrow.Buffer.BufferGetSizeMethodInfo
    ResolveMutableBufferMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveMutableBufferMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveMutableBufferMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveMutableBufferMethod t MutableBuffer, O.MethodInfo info MutableBuffer p) => O.IsLabelProxy t (MutableBuffer -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveMutableBufferMethod t MutableBuffer, O.MethodInfo info MutableBuffer p) => O.IsLabel t (MutableBuffer -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList MutableBuffer
type instance O.AttributeList MutableBuffer = MutableBufferAttributeList
type MutableBufferAttributeList = ('[ '("buffer", Arrow.Buffer.BufferBufferPropertyInfo), '("data", Arrow.Buffer.BufferDataPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList MutableBuffer = MutableBufferSignalList
type MutableBufferSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method MutableBuffer::new
-- method type : Constructor
-- Args : [Arg {argCName = "data", argType = TCArray False (-1) 1 (TBasicType TUInt8), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "Data for the buffer.\n  They aren't owned by the new buffer.\n  You must not free the data while the new buffer is alive.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "size", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of bytes of the data.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "size", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of bytes of the data.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "MutableBuffer"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_mutable_buffer_new" garrow_mutable_buffer_new :: 
    Ptr Word8 ->                            -- data : TCArray False (-1) 1 (TBasicType TUInt8)
    Int64 ->                                -- size : TBasicType TInt64
    IO (Ptr MutableBuffer)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
mutableBufferNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    ByteString
    {- ^ /@data@/: Data for the buffer.
  They aren\'t owned by the new buffer.
  You must not free the data while the new buffer is alive. -}
    -> m MutableBuffer
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.MutableBuffer.MutableBuffer'. -}
mutableBufferNew data_ = liftIO $ do
    let size = fromIntegral $ B.length data_
    data_' <- packByteString data_
    result <- garrow_mutable_buffer_new data_' size
    checkUnexpectedReturnNULL "mutableBufferNew" result
    result' <- (wrapObject MutableBuffer) result
    freeMem data_'
    return result'

#if ENABLE_OVERLOADING
#endif

-- method MutableBuffer::new_bytes
-- method type : Constructor
-- Args : [Arg {argCName = "data", argType = TInterface (Name {namespace = "GLib", name = "Bytes"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "Data for the buffer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "MutableBuffer"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_mutable_buffer_new_bytes" garrow_mutable_buffer_new_bytes :: 
    Ptr GLib.Bytes.Bytes ->                 -- data : TInterface (Name {namespace = "GLib", name = "Bytes"})
    IO (Ptr MutableBuffer)

{- |
/No description available in the introspection data./

@since 0.9.0
-}
mutableBufferNewBytes ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    GLib.Bytes.Bytes
    {- ^ /@data@/: Data for the buffer. -}
    -> m MutableBuffer
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.MutableBuffer.MutableBuffer'. -}
mutableBufferNewBytes data_ = liftIO $ do
    data_' <- unsafeManagedPtrGetPtr data_
    result <- garrow_mutable_buffer_new_bytes data_'
    checkUnexpectedReturnNULL "mutableBufferNewBytes" result
    result' <- (wrapObject MutableBuffer) result
    touchManagedPtr data_
    return result'

#if ENABLE_OVERLOADING
#endif

-- method MutableBuffer::slice
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "buffer", argType = TInterface (Name {namespace = "Arrow", name = "MutableBuffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowMutableBuffer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "offset", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "An offset in the buffer data in byte.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "size", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of bytes of the sliced data.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "MutableBuffer"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_mutable_buffer_slice" garrow_mutable_buffer_slice :: 
    Ptr MutableBuffer ->                    -- buffer : TInterface (Name {namespace = "Arrow", name = "MutableBuffer"})
    Int64 ->                                -- offset : TBasicType TInt64
    Int64 ->                                -- size : TBasicType TInt64
    IO (Ptr MutableBuffer)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
mutableBufferSlice ::
    (B.CallStack.HasCallStack, MonadIO m, IsMutableBuffer a) =>
    a
    {- ^ /@buffer@/: A 'GI.Arrow.Objects.MutableBuffer.MutableBuffer'. -}
    -> Int64
    {- ^ /@offset@/: An offset in the buffer data in byte. -}
    -> Int64
    {- ^ /@size@/: The number of bytes of the sliced data. -}
    -> m MutableBuffer
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.MutableBuffer.MutableBuffer' that
  shares data of the base 'GI.Arrow.Objects.MutableBuffer.MutableBuffer'. The created
  'GI.Arrow.Objects.MutableBuffer.MutableBuffer' has data start with offset from the base
  buffer data and are the specified bytes size. -}
mutableBufferSlice buffer offset size = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    result <- garrow_mutable_buffer_slice buffer' offset size
    checkUnexpectedReturnNULL "mutableBufferSlice" result
    result' <- (wrapObject MutableBuffer) result
    touchManagedPtr buffer
    return result'

#if ENABLE_OVERLOADING
data MutableBufferSliceMethodInfo
instance (signature ~ (Int64 -> Int64 -> m MutableBuffer), MonadIO m, IsMutableBuffer a) => O.MethodInfo MutableBufferSliceMethodInfo a signature where
    overloadedMethod _ = mutableBufferSlice

#endif


