

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::io::BufferOutputStream@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.BufferOutputStream
    ( 

-- * Exported types
    BufferOutputStream(..)                  ,
    IsBufferOutputStream                    ,
    toBufferOutputStream                    ,
    noBufferOutputStream                    ,


 -- * Methods
-- ** new #method:new#

    bufferOutputStreamNew                   ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.ResizableBuffer as Arrow.ResizableBuffer
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype BufferOutputStream = BufferOutputStream (ManagedPtr BufferOutputStream)
foreign import ccall "garrow_buffer_output_stream_get_type"
    c_garrow_buffer_output_stream_get_type :: IO GType

instance GObject BufferOutputStream where
    gobjectType _ = c_garrow_buffer_output_stream_get_type
    

-- | Type class for types which can be safely cast to `BufferOutputStream`, for instance with `toBufferOutputStream`.
class GObject o => IsBufferOutputStream o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError BufferOutputStream a) =>
    IsBufferOutputStream a
#endif
instance IsBufferOutputStream BufferOutputStream
instance Arrow.OutputStream.IsOutputStream BufferOutputStream
instance GObject.Object.IsObject BufferOutputStream
instance Arrow.File.IsFile BufferOutputStream
instance Arrow.Writeable.IsWriteable BufferOutputStream

-- | Cast to `BufferOutputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBufferOutputStream :: (MonadIO m, IsBufferOutputStream o) => o -> m BufferOutputStream
toBufferOutputStream = liftIO . unsafeCastTo BufferOutputStream

-- | A convenience alias for `Nothing` :: `Maybe` `BufferOutputStream`.
noBufferOutputStream :: Maybe BufferOutputStream
noBufferOutputStream = Nothing

#if ENABLE_OVERLOADING
type family ResolveBufferOutputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveBufferOutputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBufferOutputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBufferOutputStreamMethod "close" o = Arrow.File.FileCloseMethodInfo
    ResolveBufferOutputStreamMethod "flush" o = Arrow.Writeable.WriteableFlushMethodInfo
    ResolveBufferOutputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBufferOutputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBufferOutputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBufferOutputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBufferOutputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBufferOutputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBufferOutputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBufferOutputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBufferOutputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBufferOutputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBufferOutputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBufferOutputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveBufferOutputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBufferOutputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBufferOutputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBufferOutputStreamMethod "write" o = Arrow.Writeable.WriteableWriteMethodInfo
    ResolveBufferOutputStreamMethod "writeTensor" o = Arrow.OutputStream.OutputStreamWriteTensorMethodInfo
    ResolveBufferOutputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBufferOutputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveBufferOutputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBufferOutputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBufferOutputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBufferOutputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBufferOutputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBufferOutputStreamMethod t BufferOutputStream, O.MethodInfo info BufferOutputStream p) => O.IsLabelProxy t (BufferOutputStream -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveBufferOutputStreamMethod t BufferOutputStream, O.MethodInfo info BufferOutputStream p) => O.IsLabel t (BufferOutputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList BufferOutputStream
type instance O.AttributeList BufferOutputStream = BufferOutputStreamAttributeList
type BufferOutputStreamAttributeList = ('[ '("outputStream", Arrow.OutputStream.OutputStreamOutputStreamPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList BufferOutputStream = BufferOutputStreamSignalList
type BufferOutputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method BufferOutputStream::new
-- method type : Constructor
-- Args : [Arg {argCName = "buffer", argType = TInterface (Name {namespace = "Arrow", name = "ResizableBuffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The resizable buffer to be output.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "BufferOutputStream"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_buffer_output_stream_new" garrow_buffer_output_stream_new :: 
    Ptr Arrow.ResizableBuffer.ResizableBuffer -> -- buffer : TInterface (Name {namespace = "Arrow", name = "ResizableBuffer"})
    IO (Ptr BufferOutputStream)

{- |
/No description available in the introspection data./
-}
bufferOutputStreamNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.ResizableBuffer.IsResizableBuffer a) =>
    a
    {- ^ /@buffer@/: The resizable buffer to be output. -}
    -> m BufferOutputStream
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.BufferOutputStream.BufferOutputStream'. -}
bufferOutputStreamNew buffer = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    result <- garrow_buffer_output_stream_new buffer'
    checkUnexpectedReturnNULL "bufferOutputStreamNew" result
    result' <- (wrapObject BufferOutputStream) result
    touchManagedPtr buffer
    return result'

#if ENABLE_OVERLOADING
#endif


