

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.BufferInputStream
    ( 

-- * Exported types
    BufferInputStream(..)                   ,
    IsBufferInputStream                     ,
    toBufferInputStream                     ,
    noBufferInputStream                     ,


 -- * Methods
-- ** getBuffer #method:getBuffer#

#if ENABLE_OVERLOADING
    BufferInputStreamGetBufferMethodInfo    ,
#endif
    bufferInputStreamGetBuffer              ,


-- ** new #method:new#

    bufferInputStreamNew                    ,




 -- * Properties
-- ** buffer #attr:buffer#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    BufferInputStreamBufferPropertyInfo     ,
#endif
#if ENABLE_OVERLOADING
    bufferInputStreamBuffer                 ,
#endif
    constructBufferInputStreamBuffer        ,
    getBufferInputStreamBuffer              ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.SeekableInputStream as Arrow.SeekableInputStream
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype BufferInputStream = BufferInputStream (ManagedPtr BufferInputStream)
foreign import ccall "garrow_buffer_input_stream_get_type"
    c_garrow_buffer_input_stream_get_type :: IO GType

instance GObject BufferInputStream where
    gobjectType _ = c_garrow_buffer_input_stream_get_type
    

-- | Type class for types which can be safely cast to `BufferInputStream`, for instance with `toBufferInputStream`.
class GObject o => IsBufferInputStream o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError BufferInputStream a) =>
    IsBufferInputStream a
#endif
instance IsBufferInputStream BufferInputStream
instance Arrow.SeekableInputStream.IsSeekableInputStream BufferInputStream
instance Arrow.InputStream.IsInputStream BufferInputStream
instance GObject.Object.IsObject BufferInputStream
instance Arrow.File.IsFile BufferInputStream
instance Arrow.Readable.IsReadable BufferInputStream

-- | Cast to `BufferInputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBufferInputStream :: (MonadIO m, IsBufferInputStream o) => o -> m BufferInputStream
toBufferInputStream = liftIO . unsafeCastTo BufferInputStream

-- | A convenience alias for `Nothing` :: `Maybe` `BufferInputStream`.
noBufferInputStream :: Maybe BufferInputStream
noBufferInputStream = Nothing

#if ENABLE_OVERLOADING
type family ResolveBufferInputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveBufferInputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBufferInputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBufferInputStreamMethod "close" o = Arrow.File.FileCloseMethodInfo
    ResolveBufferInputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBufferInputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBufferInputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBufferInputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBufferInputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBufferInputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBufferInputStreamMethod "read" o = Arrow.Readable.ReadableReadMethodInfo
    ResolveBufferInputStreamMethod "readAt" o = Arrow.SeekableInputStream.SeekableInputStreamReadAtMethodInfo
    ResolveBufferInputStreamMethod "readTensor" o = Arrow.SeekableInputStream.SeekableInputStreamReadTensorMethodInfo
    ResolveBufferInputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBufferInputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBufferInputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBufferInputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBufferInputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBufferInputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveBufferInputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBufferInputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBufferInputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBufferInputStreamMethod "getBuffer" o = BufferInputStreamGetBufferMethodInfo
    ResolveBufferInputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBufferInputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveBufferInputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBufferInputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBufferInputStreamMethod "getSize" o = Arrow.SeekableInputStream.SeekableInputStreamGetSizeMethodInfo
    ResolveBufferInputStreamMethod "getSupportZeroCopy" o = Arrow.SeekableInputStream.SeekableInputStreamGetSupportZeroCopyMethodInfo
    ResolveBufferInputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBufferInputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBufferInputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBufferInputStreamMethod t BufferInputStream, O.MethodInfo info BufferInputStream p) => O.IsLabelProxy t (BufferInputStream -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveBufferInputStreamMethod t BufferInputStream, O.MethodInfo info BufferInputStream p) => O.IsLabel t (BufferInputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "buffer"
   -- Type: TInterface (Name {namespace = "Arrow", name = "Buffer"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Get the value of the “@buffer@” property.
When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to

@
'Data.GI.Base.Attributes.get' bufferInputStream #buffer
@
-}
getBufferInputStreamBuffer :: (MonadIO m, IsBufferInputStream o) => o -> m (Maybe Arrow.Buffer.Buffer)
getBufferInputStreamBuffer obj = liftIO $ getObjectPropertyObject obj "buffer" Arrow.Buffer.Buffer

{- |
Construct a `GValueConstruct` with valid value for the “@buffer@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructBufferInputStreamBuffer :: (IsBufferInputStream o, Arrow.Buffer.IsBuffer a) => a -> IO (GValueConstruct o)
constructBufferInputStreamBuffer val = constructObjectPropertyObject "buffer" (Just val)

#if ENABLE_OVERLOADING
data BufferInputStreamBufferPropertyInfo
instance AttrInfo BufferInputStreamBufferPropertyInfo where
    type AttrAllowedOps BufferInputStreamBufferPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrSetTypeConstraint BufferInputStreamBufferPropertyInfo = Arrow.Buffer.IsBuffer
    type AttrBaseTypeConstraint BufferInputStreamBufferPropertyInfo = IsBufferInputStream
    type AttrGetType BufferInputStreamBufferPropertyInfo = (Maybe Arrow.Buffer.Buffer)
    type AttrLabel BufferInputStreamBufferPropertyInfo = "buffer"
    type AttrOrigin BufferInputStreamBufferPropertyInfo = BufferInputStream
    attrGet _ = getBufferInputStreamBuffer
    attrSet _ = undefined
    attrConstruct _ = constructBufferInputStreamBuffer
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList BufferInputStream
type instance O.AttributeList BufferInputStream = BufferInputStreamAttributeList
type BufferInputStreamAttributeList = ('[ '("buffer", BufferInputStreamBufferPropertyInfo), '("inputStream", Arrow.InputStream.InputStreamInputStreamPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
bufferInputStreamBuffer :: AttrLabelProxy "buffer"
bufferInputStreamBuffer = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList BufferInputStream = BufferInputStreamSignalList
type BufferInputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method BufferInputStream::new
-- method type : Constructor
-- Args : [Arg {argCName = "buffer", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The buffer to be read.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "BufferInputStream"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_buffer_input_stream_new" garrow_buffer_input_stream_new :: 
    Ptr Arrow.Buffer.Buffer ->              -- buffer : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    IO (Ptr BufferInputStream)

{- |
/No description available in the introspection data./
-}
bufferInputStreamNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Buffer.IsBuffer a) =>
    a
    {- ^ /@buffer@/: The buffer to be read. -}
    -> m BufferInputStream
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.BufferInputStream.BufferInputStream'. -}
bufferInputStreamNew buffer = liftIO $ do
    buffer' <- unsafeManagedPtrCastPtr buffer
    result <- garrow_buffer_input_stream_new buffer'
    checkUnexpectedReturnNULL "bufferInputStreamNew" result
    result' <- (wrapObject BufferInputStream) result
    touchManagedPtr buffer
    return result'

#if ENABLE_OVERLOADING
#endif

-- method BufferInputStream::get_buffer
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "input_stream", argType = TInterface (Name {namespace = "Arrow", name = "BufferInputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBufferInputStream.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Buffer"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_buffer_input_stream_get_buffer" garrow_buffer_input_stream_get_buffer :: 
    Ptr BufferInputStream ->                -- input_stream : TInterface (Name {namespace = "Arrow", name = "BufferInputStream"})
    IO (Ptr Arrow.Buffer.Buffer)

{- |
/No description available in the introspection data./
-}
bufferInputStreamGetBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, IsBufferInputStream a) =>
    a
    {- ^ /@inputStream@/: A 'GI.Arrow.Objects.BufferInputStream.BufferInputStream'. -}
    -> m Arrow.Buffer.Buffer
    {- ^ __Returns:__ The data of the stream as 'GI.Arrow.Objects.Buffer.Buffer'. -}
bufferInputStreamGetBuffer inputStream = liftIO $ do
    inputStream' <- unsafeManagedPtrCastPtr inputStream
    result <- garrow_buffer_input_stream_get_buffer inputStream'
    checkUnexpectedReturnNULL "bufferInputStreamGetBuffer" result
    result' <- (wrapObject Arrow.Buffer.Buffer) result
    touchManagedPtr inputStream
    return result'

#if ENABLE_OVERLOADING
data BufferInputStreamGetBufferMethodInfo
instance (signature ~ (m Arrow.Buffer.Buffer), MonadIO m, IsBufferInputStream a) => O.MethodInfo BufferInputStreamGetBufferMethodInfo a signature where
    overloadedMethod _ = bufferInputStreamGetBuffer

#endif


