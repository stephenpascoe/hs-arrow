

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It\'s an input stream for @GInputStream@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.GIOInputStream
    ( 

-- * Exported types
    GIOInputStream(..)                      ,
    IsGIOInputStream                        ,
    toGIOInputStream                        ,
    noGIOInputStream                        ,


 -- * Methods
-- ** getRaw #method:getRaw#

#if ENABLE_OVERLOADING
    GIOInputStreamGetRawMethodInfo          ,
#endif
    gIOInputStreamGetRaw                    ,


-- ** new #method:new#

    gIOInputStreamNew                       ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.InputStream as Arrow.InputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.SeekableInputStream as Arrow.SeekableInputStream
import qualified GI.GObject.Objects.Object as GObject.Object
import qualified GI.Gio.Objects.InputStream as Gio.InputStream

-- | Memory-managed wrapper type.
newtype GIOInputStream = GIOInputStream (ManagedPtr GIOInputStream)
foreign import ccall "garrow_gio_input_stream_get_type"
    c_garrow_gio_input_stream_get_type :: IO GType

instance GObject GIOInputStream where
    gobjectType _ = c_garrow_gio_input_stream_get_type
    

-- | Type class for types which can be safely cast to `GIOInputStream`, for instance with `toGIOInputStream`.
class GObject o => IsGIOInputStream o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError GIOInputStream a) =>
    IsGIOInputStream a
#endif
instance IsGIOInputStream GIOInputStream
instance Arrow.SeekableInputStream.IsSeekableInputStream GIOInputStream
instance Arrow.InputStream.IsInputStream GIOInputStream
instance GObject.Object.IsObject GIOInputStream
instance Arrow.File.IsFile GIOInputStream
instance Arrow.Readable.IsReadable GIOInputStream

-- | Cast to `GIOInputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGIOInputStream :: (MonadIO m, IsGIOInputStream o) => o -> m GIOInputStream
toGIOInputStream = liftIO . unsafeCastTo GIOInputStream

-- | A convenience alias for `Nothing` :: `Maybe` `GIOInputStream`.
noGIOInputStream :: Maybe GIOInputStream
noGIOInputStream = Nothing

#if ENABLE_OVERLOADING
type family ResolveGIOInputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveGIOInputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGIOInputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGIOInputStreamMethod "close" o = Arrow.File.FileCloseMethodInfo
    ResolveGIOInputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGIOInputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGIOInputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGIOInputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGIOInputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGIOInputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGIOInputStreamMethod "read" o = Arrow.Readable.ReadableReadMethodInfo
    ResolveGIOInputStreamMethod "readAt" o = Arrow.SeekableInputStream.SeekableInputStreamReadAtMethodInfo
    ResolveGIOInputStreamMethod "readTensor" o = Arrow.SeekableInputStream.SeekableInputStreamReadTensorMethodInfo
    ResolveGIOInputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGIOInputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGIOInputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGIOInputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGIOInputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGIOInputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveGIOInputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGIOInputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGIOInputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGIOInputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGIOInputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveGIOInputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGIOInputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGIOInputStreamMethod "getRaw" o = GIOInputStreamGetRawMethodInfo
    ResolveGIOInputStreamMethod "getSize" o = Arrow.SeekableInputStream.SeekableInputStreamGetSizeMethodInfo
    ResolveGIOInputStreamMethod "getSupportZeroCopy" o = Arrow.SeekableInputStream.SeekableInputStreamGetSupportZeroCopyMethodInfo
    ResolveGIOInputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGIOInputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGIOInputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGIOInputStreamMethod t GIOInputStream, O.MethodInfo info GIOInputStream p) => O.IsLabelProxy t (GIOInputStream -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveGIOInputStreamMethod t GIOInputStream, O.MethodInfo info GIOInputStream p) => O.IsLabel t (GIOInputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList GIOInputStream
type instance O.AttributeList GIOInputStream = GIOInputStreamAttributeList
type GIOInputStreamAttributeList = ('[ '("inputStream", Arrow.InputStream.InputStreamInputStreamPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList GIOInputStream = GIOInputStreamSignalList
type GIOInputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method GIOInputStream::new
-- method type : Constructor
-- Args : [Arg {argCName = "gio_input_stream", argType = TInterface (Name {namespace = "Gio", name = "InputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The stream to be read.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "GIOInputStream"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_gio_input_stream_new" garrow_gio_input_stream_new :: 
    Ptr Gio.InputStream.InputStream ->      -- gio_input_stream : TInterface (Name {namespace = "Gio", name = "InputStream"})
    IO (Ptr GIOInputStream)

{- |
/No description available in the introspection data./

@since 0.5.0
-}
gIOInputStreamNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gio.InputStream.IsInputStream a) =>
    a
    {- ^ /@gioInputStream@/: The stream to be read. -}
    -> m GIOInputStream
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.GIOInputStream.GIOInputStream'. -}
gIOInputStreamNew gioInputStream = liftIO $ do
    gioInputStream' <- unsafeManagedPtrCastPtr gioInputStream
    result <- garrow_gio_input_stream_new gioInputStream'
    checkUnexpectedReturnNULL "gIOInputStreamNew" result
    result' <- (wrapObject GIOInputStream) result
    touchManagedPtr gioInputStream
    return result'

#if ENABLE_OVERLOADING
#endif

-- method GIOInputStream::get_raw
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "input_stream", argType = TInterface (Name {namespace = "Arrow", name = "GIOInputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowGIOInputStream.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Gio", name = "InputStream"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_gio_input_stream_get_raw" garrow_gio_input_stream_get_raw :: 
    Ptr GIOInputStream ->                   -- input_stream : TInterface (Name {namespace = "Arrow", name = "GIOInputStream"})
    IO (Ptr Gio.InputStream.InputStream)

{- |
/No description available in the introspection data./

@since 0.5.0
-}
gIOInputStreamGetRaw ::
    (B.CallStack.HasCallStack, MonadIO m, IsGIOInputStream a) =>
    a
    {- ^ /@inputStream@/: A 'GI.Arrow.Objects.GIOInputStream.GIOInputStream'. -}
    -> m Gio.InputStream.InputStream
    {- ^ __Returns:__ The wrapped 'GI.Gio.Objects.InputStream.InputStream'. -}
gIOInputStreamGetRaw inputStream = liftIO $ do
    inputStream' <- unsafeManagedPtrCastPtr inputStream
    result <- garrow_gio_input_stream_get_raw inputStream'
    checkUnexpectedReturnNULL "gIOInputStreamGetRaw" result
    result' <- (newObject Gio.InputStream.InputStream) result
    touchManagedPtr inputStream
    return result'

#if ENABLE_OVERLOADING
data GIOInputStreamGetRawMethodInfo
instance (signature ~ (m Gio.InputStream.InputStream), MonadIO m, IsGIOInputStream a) => O.MethodInfo GIOInputStreamGetRawMethodInfo a signature where
    overloadedMethod _ = gIOInputStreamGetRaw

#endif


