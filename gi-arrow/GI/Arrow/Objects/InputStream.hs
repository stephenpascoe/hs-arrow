

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.InputStream
    ( 

-- * Exported types
    InputStream(..)                         ,
    IsInputStream                           ,
    toInputStream                           ,
    noInputStream                           ,


 -- * Properties
-- ** inputStream #attr:inputStream#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    InputStreamInputStreamPropertyInfo      ,
#endif
    constructInputStreamInputStream         ,
#if ENABLE_OVERLOADING
    inputStreamInputStream                  ,
#endif




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype InputStream = InputStream (ManagedPtr InputStream)
foreign import ccall "garrow_input_stream_get_type"
    c_garrow_input_stream_get_type :: IO GType

instance GObject InputStream where
    gobjectType _ = c_garrow_input_stream_get_type
    

-- | Type class for types which can be safely cast to `InputStream`, for instance with `toInputStream`.
class GObject o => IsInputStream o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError InputStream a) =>
    IsInputStream a
#endif
instance IsInputStream InputStream
instance GObject.Object.IsObject InputStream
instance Arrow.File.IsFile InputStream
instance Arrow.Readable.IsReadable InputStream

-- | Cast to `InputStream`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInputStream :: (MonadIO m, IsInputStream o) => o -> m InputStream
toInputStream = liftIO . unsafeCastTo InputStream

-- | A convenience alias for `Nothing` :: `Maybe` `InputStream`.
noInputStream :: Maybe InputStream
noInputStream = Nothing

#if ENABLE_OVERLOADING
type family ResolveInputStreamMethod (t :: Symbol) (o :: *) :: * where
    ResolveInputStreamMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInputStreamMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInputStreamMethod "close" o = Arrow.File.FileCloseMethodInfo
    ResolveInputStreamMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInputStreamMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInputStreamMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInputStreamMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInputStreamMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInputStreamMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInputStreamMethod "read" o = Arrow.Readable.ReadableReadMethodInfo
    ResolveInputStreamMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInputStreamMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInputStreamMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInputStreamMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInputStreamMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInputStreamMethod "tell" o = Arrow.File.FileTellMethodInfo
    ResolveInputStreamMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInputStreamMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInputStreamMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInputStreamMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInputStreamMethod "getMode" o = Arrow.File.FileGetModeMethodInfo
    ResolveInputStreamMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInputStreamMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInputStreamMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInputStreamMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInputStreamMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInputStreamMethod t InputStream, O.MethodInfo info InputStream p) => O.IsLabelProxy t (InputStream -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveInputStreamMethod t InputStream, O.MethodInfo info InputStream p) => O.IsLabel t (InputStream -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "input-stream"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@input-stream@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructInputStreamInputStream :: (IsInputStream o) => Ptr () -> IO (GValueConstruct o)
constructInputStreamInputStream val = constructObjectPropertyPtr "input-stream" val

#if ENABLE_OVERLOADING
data InputStreamInputStreamPropertyInfo
instance AttrInfo InputStreamInputStreamPropertyInfo where
    type AttrAllowedOps InputStreamInputStreamPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint InputStreamInputStreamPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint InputStreamInputStreamPropertyInfo = IsInputStream
    type AttrGetType InputStreamInputStreamPropertyInfo = ()
    type AttrLabel InputStreamInputStreamPropertyInfo = "input-stream"
    type AttrOrigin InputStreamInputStreamPropertyInfo = InputStream
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructInputStreamInputStream
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList InputStream
type instance O.AttributeList InputStream = InputStreamAttributeList
type InputStreamAttributeList = ('[ '("inputStream", InputStreamInputStreamPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
inputStreamInputStream :: AttrLabelProxy "inputStream"
inputStreamInputStream = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList InputStream = InputStreamSignalList
type InputStreamSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif


