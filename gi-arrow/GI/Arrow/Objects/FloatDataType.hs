

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.FloatDataType
    ( 

-- * Exported types
    FloatDataType(..)                       ,
    IsFloatDataType                         ,
    toFloatDataType                         ,
    noFloatDataType                         ,


 -- * Methods
-- ** new #method:new#

    floatDataTypeNew                        ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedWidthDataType as Arrow.FixedWidthDataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.FloatingPointDataType as Arrow.FloatingPointDataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.NumericDataType as Arrow.NumericDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype FloatDataType = FloatDataType (ManagedPtr FloatDataType)
foreign import ccall "garrow_float_data_type_get_type"
    c_garrow_float_data_type_get_type :: IO GType

instance GObject FloatDataType where
    gobjectType _ = c_garrow_float_data_type_get_type
    

-- | Type class for types which can be safely cast to `FloatDataType`, for instance with `toFloatDataType`.
class GObject o => IsFloatDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError FloatDataType a) =>
    IsFloatDataType a
#endif
instance IsFloatDataType FloatDataType
instance Arrow.FloatingPointDataType.IsFloatingPointDataType FloatDataType
instance Arrow.NumericDataType.IsNumericDataType FloatDataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType FloatDataType
instance Arrow.DataType.IsDataType FloatDataType
instance GObject.Object.IsObject FloatDataType

-- | Cast to `FloatDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFloatDataType :: (MonadIO m, IsFloatDataType o) => o -> m FloatDataType
toFloatDataType = liftIO . unsafeCastTo FloatDataType

-- | A convenience alias for `Nothing` :: `Maybe` `FloatDataType`.
noFloatDataType :: Maybe FloatDataType
noFloatDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveFloatDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveFloatDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFloatDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFloatDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveFloatDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFloatDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFloatDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFloatDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFloatDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFloatDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFloatDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFloatDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFloatDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFloatDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFloatDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFloatDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFloatDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveFloatDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFloatDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFloatDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveFloatDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFloatDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveFloatDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFloatDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFloatDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFloatDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFloatDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFloatDataTypeMethod t FloatDataType, O.MethodInfo info FloatDataType p) => O.IsLabelProxy t (FloatDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveFloatDataTypeMethod t FloatDataType, O.MethodInfo info FloatDataType p) => O.IsLabel t (FloatDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList FloatDataType
type instance O.AttributeList FloatDataType = FloatDataTypeAttributeList
type FloatDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList FloatDataType = FloatDataTypeSignalList
type FloatDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FloatDataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "FloatDataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_float_data_type_new" garrow_float_data_type_new :: 
    IO (Ptr FloatDataType)

{- |
/No description available in the introspection data./
-}
floatDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m FloatDataType
    {- ^ __Returns:__ The newly created float data type. -}
floatDataTypeNew  = liftIO $ do
    result <- garrow_float_data_type_new
    checkUnexpectedReturnNULL "floatDataTypeNew" result
    result' <- (wrapObject FloatDataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


