

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::TimeType@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.TimeDataType
    ( 

-- * Exported types
    TimeDataType(..)                        ,
    IsTimeDataType                          ,
    toTimeDataType                          ,
    noTimeDataType                          ,


 -- * Methods
-- ** getUnit #method:getUnit#

#if ENABLE_OVERLOADING
    TimeDataTypeGetUnitMethodInfo           ,
#endif
    timeDataTypeGetUnit                     ,




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

import {-# SOURCE #-} qualified GI.Arrow.Enums as Arrow.Enums
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype TimeDataType = TimeDataType (ManagedPtr TimeDataType)
foreign import ccall "garrow_time_data_type_get_type"
    c_garrow_time_data_type_get_type :: IO GType

instance GObject TimeDataType where
    gobjectType _ = c_garrow_time_data_type_get_type
    

-- | Type class for types which can be safely cast to `TimeDataType`, for instance with `toTimeDataType`.
class GObject o => IsTimeDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError TimeDataType a) =>
    IsTimeDataType a
#endif
instance IsTimeDataType TimeDataType
instance Arrow.DataType.IsDataType TimeDataType
instance GObject.Object.IsObject TimeDataType

-- | Cast to `TimeDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTimeDataType :: (MonadIO m, IsTimeDataType o) => o -> m TimeDataType
toTimeDataType = liftIO . unsafeCastTo TimeDataType

-- | A convenience alias for `Nothing` :: `Maybe` `TimeDataType`.
noTimeDataType :: Maybe TimeDataType
noTimeDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveTimeDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveTimeDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTimeDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTimeDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveTimeDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTimeDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTimeDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTimeDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTimeDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTimeDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTimeDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTimeDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTimeDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTimeDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTimeDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTimeDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTimeDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveTimeDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTimeDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTimeDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTimeDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveTimeDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTimeDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTimeDataTypeMethod "getUnit" o = TimeDataTypeGetUnitMethodInfo
    ResolveTimeDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTimeDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTimeDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTimeDataTypeMethod t TimeDataType, O.MethodInfo info TimeDataType p) => O.IsLabelProxy t (TimeDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTimeDataTypeMethod t TimeDataType, O.MethodInfo info TimeDataType p) => O.IsLabel t (TimeDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList TimeDataType
type instance O.AttributeList TimeDataType = TimeDataTypeAttributeList
type TimeDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList TimeDataType = TimeDataTypeSignalList
type TimeDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method TimeDataType::get_unit
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "time_data_type", argType = TInterface (Name {namespace = "Arrow", name = "TimeDataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The #GArrowTimeDataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "TimeUnit"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_time_data_type_get_unit" garrow_time_data_type_get_unit :: 
    Ptr TimeDataType ->                     -- time_data_type : TInterface (Name {namespace = "Arrow", name = "TimeDataType"})
    IO CUInt

{- |
/No description available in the introspection data./

@since 0.7.0
-}
timeDataTypeGetUnit ::
    (B.CallStack.HasCallStack, MonadIO m, IsTimeDataType a) =>
    a
    {- ^ /@timeDataType@/: The 'GI.Arrow.Objects.TimeDataType.TimeDataType'. -}
    -> m Arrow.Enums.TimeUnit
    {- ^ __Returns:__ The unit of the time data type. -}
timeDataTypeGetUnit timeDataType = liftIO $ do
    timeDataType' <- unsafeManagedPtrCastPtr timeDataType
    result <- garrow_time_data_type_get_unit timeDataType'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr timeDataType
    return result'

#if ENABLE_OVERLOADING
data TimeDataTypeGetUnitMethodInfo
instance (signature ~ (m Arrow.Enums.TimeUnit), MonadIO m, IsTimeDataType a) => O.MethodInfo TimeDataTypeGetUnitMethodInfo a signature where
    overloadedMethod _ = timeDataTypeGetUnit

#endif


