

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::PoolBuffer@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.PoolBuffer
    ( 

-- * Exported types
    PoolBuffer(..)                          ,
    IsPoolBuffer                            ,
    toPoolBuffer                            ,
    noPoolBuffer                            ,


 -- * Methods
-- ** new #method:new#

    poolBufferNew                           ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.ResizableBuffer as Arrow.ResizableBuffer
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype PoolBuffer = PoolBuffer (ManagedPtr PoolBuffer)
foreign import ccall "garrow_pool_buffer_get_type"
    c_garrow_pool_buffer_get_type :: IO GType

instance GObject PoolBuffer where
    gobjectType _ = c_garrow_pool_buffer_get_type
    

-- | Type class for types which can be safely cast to `PoolBuffer`, for instance with `toPoolBuffer`.
class GObject o => IsPoolBuffer o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError PoolBuffer a) =>
    IsPoolBuffer a
#endif
instance IsPoolBuffer PoolBuffer
instance Arrow.ResizableBuffer.IsResizableBuffer PoolBuffer
instance Arrow.MutableBuffer.IsMutableBuffer PoolBuffer
instance Arrow.Buffer.IsBuffer PoolBuffer
instance GObject.Object.IsObject PoolBuffer

-- | Cast to `PoolBuffer`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toPoolBuffer :: (MonadIO m, IsPoolBuffer o) => o -> m PoolBuffer
toPoolBuffer = liftIO . unsafeCastTo PoolBuffer

-- | A convenience alias for `Nothing` :: `Maybe` `PoolBuffer`.
noPoolBuffer :: Maybe PoolBuffer
noPoolBuffer = Nothing

#if ENABLE_OVERLOADING
type family ResolvePoolBufferMethod (t :: Symbol) (o :: *) :: * where
    ResolvePoolBufferMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePoolBufferMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePoolBufferMethod "copy" o = Arrow.Buffer.BufferCopyMethodInfo
    ResolvePoolBufferMethod "equal" o = Arrow.Buffer.BufferEqualMethodInfo
    ResolvePoolBufferMethod "equalNBytes" o = Arrow.Buffer.BufferEqualNBytesMethodInfo
    ResolvePoolBufferMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePoolBufferMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePoolBufferMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePoolBufferMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePoolBufferMethod "isMutable" o = Arrow.Buffer.BufferIsMutableMethodInfo
    ResolvePoolBufferMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePoolBufferMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePoolBufferMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePoolBufferMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePoolBufferMethod "reserve" o = Arrow.ResizableBuffer.ResizableBufferReserveMethodInfo
    ResolvePoolBufferMethod "resize" o = Arrow.ResizableBuffer.ResizableBufferResizeMethodInfo
    ResolvePoolBufferMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePoolBufferMethod "slice" o = Arrow.MutableBuffer.MutableBufferSliceMethodInfo
    ResolvePoolBufferMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePoolBufferMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePoolBufferMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePoolBufferMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePoolBufferMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePoolBufferMethod "getCapacity" o = Arrow.Buffer.BufferGetCapacityMethodInfo
    ResolvePoolBufferMethod "getData" o = Arrow.Buffer.BufferGetDataMethodInfo
    ResolvePoolBufferMethod "getMutableData" o = Arrow.Buffer.BufferGetMutableDataMethodInfo
    ResolvePoolBufferMethod "getParent" o = Arrow.Buffer.BufferGetParentMethodInfo
    ResolvePoolBufferMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePoolBufferMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePoolBufferMethod "getSize" o = Arrow.Buffer.BufferGetSizeMethodInfo
    ResolvePoolBufferMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePoolBufferMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePoolBufferMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePoolBufferMethod t PoolBuffer, O.MethodInfo info PoolBuffer p) => O.IsLabelProxy t (PoolBuffer -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolvePoolBufferMethod t PoolBuffer, O.MethodInfo info PoolBuffer p) => O.IsLabel t (PoolBuffer -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList PoolBuffer
type instance O.AttributeList PoolBuffer = PoolBufferAttributeList
type PoolBufferAttributeList = ('[ '("buffer", Arrow.Buffer.BufferBufferPropertyInfo), '("data", Arrow.Buffer.BufferDataPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList PoolBuffer = PoolBufferSignalList
type PoolBufferSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method PoolBuffer::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "PoolBuffer"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_pool_buffer_new" garrow_pool_buffer_new :: 
    IO (Ptr PoolBuffer)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
poolBufferNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m PoolBuffer
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.PoolBuffer.PoolBuffer'. -}
poolBufferNew  = liftIO $ do
    result <- garrow_pool_buffer_new
    checkUnexpectedReturnNULL "poolBufferNew" result
    result' <- (wrapObject PoolBuffer) result
    return result'

#if ENABLE_OVERLOADING
#endif


