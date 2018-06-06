

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It\'s an output stream for @GOutputStream@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.GIOOutputStream
    ( 

-- * Exported types
    GIOOutputStream(..)                     ,
    IsGIOOutputStream                       ,
    toGIOOutputStream                       ,
    noGIOOutputStream                       ,


 -- * Methods
-- ** getRaw #method:getRaw#

#if ENABLE_OVERLOADING
    GIOOutputStreamGetRawMethodInfo         ,
#endif
    gIOOutputStreamGetRaw                   ,


-- ** new #method:new#

    gIOOutputStreamNew                      ,




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
import qualified GI.Gio.Objects.OutputStream as Gio.OutputStream

-- | Memory-managed wrapper type.
newtype GIOOutputStream = GIOOutputStream (ManagedPtr GIOOutputStream)
foreign import ccall "garrow_gio_output_stream_get_type"
    c_garrow_gio_output_stream_get_type :: IO GType

instance GObject GIOOutputStream where
    gobjectType _ = c_garrow_gio_output_stream_get_type
    

-- | Type class for types which can be safely cast to `GIOOutputStream`, for instance with `toGIOOutputStream`.
class GObject o => IsGIOOutputStream o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError GIOOutputStream a) =>
    IsGIOOutputStream a
#endif
instance IsGIOOutputStream GIOOutputStream
instance Arrow.OutputStream.IsOutputStream GIOOutputStream
instance GObject.Object.IsObject GIOOutputStream
instance Arrow.File.IsFile GIOOutputStream
instance Arrow.Writeable.IsWriteable GIOOutputStream

-- | Cast to `GIOOutputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toGIOOutputStream :: (MonadIO m, IsGIOOutputStream o) => o -> m GIOOutputStream
toGIOOutputStream = liftIO . unsafeCastTo GIOOutputStream

-- | A convenience alias for `Nothing` :: `Maybe` `GIOOutputStream`.
noGIOOutputStream :: Maybe GIOOutputStream
noGIOOutputStream = Nothing

#if ENABLE_OVERLOADING
type family ResolveGIOOutputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveGIOOutputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveGIOOutputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveGIOOutputStreamMethod "close" o = Arrow.File.FileCloseMethodInfo
    ResolveGIOOutputStreamMethod "flush" o = Arrow.Writeable.WriteableFlushMethodInfo
    ResolveGIOOutputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveGIOOutputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveGIOOutputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveGIOOutputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveGIOOutputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveGIOOutputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveGIOOutputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveGIOOutputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveGIOOutputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveGIOOutputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveGIOOutputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveGIOOutputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveGIOOutputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveGIOOutputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveGIOOutputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveGIOOutputStreamMethod "write" o = Arrow.Writeable.WriteableWriteMethodInfo
    ResolveGIOOutputStreamMethod "writeTensor" o = Arrow.OutputStream.OutputStreamWriteTensorMethodInfo
    ResolveGIOOutputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveGIOOutputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveGIOOutputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveGIOOutputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveGIOOutputStreamMethod "getRaw" o = GIOOutputStreamGetRawMethodInfo
    ResolveGIOOutputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveGIOOutputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveGIOOutputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveGIOOutputStreamMethod t GIOOutputStream, O.MethodInfo info GIOOutputStream p) => O.IsLabelProxy t (GIOOutputStream -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveGIOOutputStreamMethod t GIOOutputStream, O.MethodInfo info GIOOutputStream p) => O.IsLabel t (GIOOutputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList GIOOutputStream
type instance O.AttributeList GIOOutputStream = GIOOutputStreamAttributeList
type GIOOutputStreamAttributeList = ('[ '("outputStream", Arrow.OutputStream.OutputStreamOutputStreamPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList GIOOutputStream = GIOOutputStreamSignalList
type GIOOutputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method GIOOutputStream::new
-- method type : Constructor
-- Args : [Arg {argCName = "gio_output_stream", argType = TInterface (Name {namespace = "Gio", name = "OutputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The stream to be output.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "GIOOutputStream"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_gio_output_stream_new" garrow_gio_output_stream_new :: 
    Ptr Gio.OutputStream.OutputStream ->    -- gio_output_stream : TInterface (Name {namespace = "Gio", name = "OutputStream"})
    IO (Ptr GIOOutputStream)

{- |
/No description available in the introspection data./
-}
gIOOutputStreamNew ::
    (B.CallStack.HasCallStack, MonadIO m, Gio.OutputStream.IsOutputStream a) =>
    a
    {- ^ /@gioOutputStream@/: The stream to be output. -}
    -> m GIOOutputStream
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.GIOOutputStream.GIOOutputStream'. -}
gIOOutputStreamNew gioOutputStream = liftIO $ do
    gioOutputStream' <- unsafeManagedPtrCastPtr gioOutputStream
    result <- garrow_gio_output_stream_new gioOutputStream'
    checkUnexpectedReturnNULL "gIOOutputStreamNew" result
    result' <- (wrapObject GIOOutputStream) result
    touchManagedPtr gioOutputStream
    return result'

#if ENABLE_OVERLOADING
#endif

-- method GIOOutputStream::get_raw
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "output_stream", argType = TInterface (Name {namespace = "Arrow", name = "GIOOutputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowGIOOutputStream.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Gio", name = "OutputStream"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_gio_output_stream_get_raw" garrow_gio_output_stream_get_raw :: 
    Ptr GIOOutputStream ->                  -- output_stream : TInterface (Name {namespace = "Arrow", name = "GIOOutputStream"})
    IO (Ptr Gio.OutputStream.OutputStream)

{- |
/No description available in the introspection data./

@since 0.5.0
-}
gIOOutputStreamGetRaw ::
    (B.CallStack.HasCallStack, MonadIO m, IsGIOOutputStream a) =>
    a
    {- ^ /@outputStream@/: A 'GI.Arrow.Objects.GIOOutputStream.GIOOutputStream'. -}
    -> m Gio.OutputStream.OutputStream
    {- ^ __Returns:__ The wrapped 'GI.Gio.Objects.OutputStream.OutputStream'. -}
gIOOutputStreamGetRaw outputStream = liftIO $ do
    outputStream' <- unsafeManagedPtrCastPtr outputStream
    result <- garrow_gio_output_stream_get_raw outputStream'
    checkUnexpectedReturnNULL "gIOOutputStreamGetRaw" result
    result' <- (newObject Gio.OutputStream.OutputStream) result
    touchManagedPtr outputStream
    return result'

#if ENABLE_OVERLOADING
data GIOOutputStreamGetRawMethodInfo
instance (signature ~ (m Gio.OutputStream.OutputStream), MonadIO m, IsGIOOutputStream a) => O.MethodInfo GIOOutputStreamGetRawMethodInfo a signature where
    overloadedMethod _ = gIOOutputStreamGetRaw

#endif


