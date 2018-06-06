

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::ResizableBuffer@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.ResizableBuffer
    ( 

-- * Exported types
    ResizableBuffer(..)                     ,
    IsResizableBuffer                       ,
    toResizableBuffer                       ,
    noResizableBuffer                       ,


 -- * Methods
-- ** reserve #method:reserve#

#if ENABLE_OVERLOADING
    ResizableBufferReserveMethodInfo        ,
#endif
    resizableBufferReserve                  ,


-- ** resize #method:resize#

#if ENABLE_OVERLOADING
    ResizableBufferResizeMethodInfo         ,
#endif
    resizableBufferResize                   ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.MutableBuffer as Arrow.MutableBuffer
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype ResizableBuffer = ResizableBuffer (ManagedPtr ResizableBuffer)
foreign import ccall "garrow_resizable_buffer_get_type"
    c_garrow_resizable_buffer_get_type :: IO GType

instance GObject ResizableBuffer where
    gobjectType _ = c_garrow_resizable_buffer_get_type
    

-- | Type class for types which can be safely cast to `ResizableBuffer`, for instance with `toResizableBuffer`.
class GObject o => IsResizableBuffer o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError ResizableBuffer a) =>
    IsResizableBuffer a
#endif
instance IsResizableBuffer ResizableBuffer
instance Arrow.MutableBuffer.IsMutableBuffer ResizableBuffer
instance Arrow.Buffer.IsBuffer ResizableBuffer
instance GObject.Object.IsObject ResizableBuffer

-- | Cast to `ResizableBuffer`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toResizableBuffer :: (MonadIO m, IsResizableBuffer o) => o -> m ResizableBuffer
toResizableBuffer = liftIO . unsafeCastTo ResizableBuffer

-- | A convenience alias for `Nothing` :: `Maybe` `ResizableBuffer`.
noResizableBuffer :: Maybe ResizableBuffer
noResizableBuffer = Nothing

#if ENABLE_OVERLOADING
type family ResolveResizableBufferMethod (t :: Symbol) (o :: *) :: * where
    ResolveResizableBufferMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveResizableBufferMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveResizableBufferMethod "copy" o = Arrow.Buffer.BufferCopyMethodInfo
    ResolveResizableBufferMethod "equal" o = Arrow.Buffer.BufferEqualMethodInfo
    ResolveResizableBufferMethod "equalNBytes" o = Arrow.Buffer.BufferEqualNBytesMethodInfo
    ResolveResizableBufferMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveResizableBufferMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveResizableBufferMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveResizableBufferMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveResizableBufferMethod "isMutable" o = Arrow.Buffer.BufferIsMutableMethodInfo
    ResolveResizableBufferMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveResizableBufferMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveResizableBufferMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveResizableBufferMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveResizableBufferMethod "reserve" o = ResizableBufferReserveMethodInfo
    ResolveResizableBufferMethod "resize" o = ResizableBufferResizeMethodInfo
    ResolveResizableBufferMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveResizableBufferMethod "slice" o = Arrow.MutableBuffer.MutableBufferSliceMethodInfo
    ResolveResizableBufferMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveResizableBufferMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveResizableBufferMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveResizableBufferMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveResizableBufferMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveResizableBufferMethod "getCapacity" o = Arrow.Buffer.BufferGetCapacityMethodInfo
    ResolveResizableBufferMethod "getData" o = Arrow.Buffer.BufferGetDataMethodInfo
    ResolveResizableBufferMethod "getMutableData" o = Arrow.Buffer.BufferGetMutableDataMethodInfo
    ResolveResizableBufferMethod "getParent" o = Arrow.Buffer.BufferGetParentMethodInfo
    ResolveResizableBufferMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveResizableBufferMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveResizableBufferMethod "getSize" o = Arrow.Buffer.BufferGetSizeMethodInfo
    ResolveResizableBufferMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveResizableBufferMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveResizableBufferMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveResizableBufferMethod t ResizableBuffer, O.MethodInfo info ResizableBuffer p) => O.IsLabelProxy t (ResizableBuffer -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveResizableBufferMethod t ResizableBuffer, O.MethodInfo info ResizableBuffer p) => O.IsLabel t (ResizableBuffer -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList ResizableBuffer
type instance O.AttributeList ResizableBuffer = ResizableBufferAttributeList
type ResizableBufferAttributeList = ('[ '("buffer", Arrow.Buffer.BufferBufferPropertyInfo), '("data", Arrow.Buffer.BufferDataPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList ResizableBuffer = ResizableBufferSignalList
type ResizableBufferSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method ResizableBuffer::reserve
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "buffer", argType = TInterface (Name {namespace = "Arrow", name = "ResizableBuffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowResizableBuffer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "new_capacity", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The new buffer capacity in bytes.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_resizable_buffer_reserve" garrow_resizable_buffer_reserve :: 
    Ptr ResizableBuffer ->                  -- buffer : TInterface (Name {namespace = "Arrow", name = "ResizableBuffer"})
    Int64 ->                                -- new_capacity : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.3.0
-}
resizableBufferReserve ::
    (B.CallStack.HasCallStack, MonadIO m, IsResizableBuffer a) =>
    a
    {- ^ /@buffer@/: A 'GI.Arrow.Objects.ResizableBuffer.ResizableBuffer'. -}
    -> Int64
    {- ^ /@newCapacity@/: The new buffer capacity in bytes. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
resizableBufferReserve buffer newCapacity = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    onException (do
        _ <- propagateGError $ garrow_resizable_buffer_reserve buffer' newCapacity
        touchManagedPtr buffer
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data ResizableBufferReserveMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsResizableBuffer a) => O.MethodInfo ResizableBufferReserveMethodInfo a signature where
    overloadedMethod _ = resizableBufferReserve

#endif

-- method ResizableBuffer::resize
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "buffer", argType = TInterface (Name {namespace = "Arrow", name = "ResizableBuffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowResizableBuffer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "new_size", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The new buffer size in bytes.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_resizable_buffer_resize" garrow_resizable_buffer_resize :: 
    Ptr ResizableBuffer ->                  -- buffer : TInterface (Name {namespace = "Arrow", name = "ResizableBuffer"})
    Int64 ->                                -- new_size : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.3.0
-}
resizableBufferResize ::
    (B.CallStack.HasCallStack, MonadIO m, IsResizableBuffer a) =>
    a
    {- ^ /@buffer@/: A 'GI.Arrow.Objects.ResizableBuffer.ResizableBuffer'. -}
    -> Int64
    {- ^ /@newSize@/: The new buffer size in bytes. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
resizableBufferResize buffer newSize = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    onException (do
        _ <- propagateGError $ garrow_resizable_buffer_resize buffer' newSize
        touchManagedPtr buffer
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data ResizableBufferResizeMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsResizableBuffer a) => O.MethodInfo ResizableBufferResizeMethodInfo a signature where
    overloadedMethod _ = resizableBufferResize

#endif


