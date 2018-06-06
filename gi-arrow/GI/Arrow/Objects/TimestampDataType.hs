

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::TimestampType@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.TimestampDataType
    ( 

-- * Exported types
    TimestampDataType(..)                   ,
    IsTimestampDataType                     ,
    toTimestampDataType                     ,
    noTimestampDataType                     ,


 -- * Methods
-- ** getUnit #method:getUnit#

#if ENABLE_OVERLOADING
    TimestampDataTypeGetUnitMethodInfo      ,
#endif
    timestampDataTypeGetUnit                ,


-- ** new #method:new#

    timestampDataTypeNew                    ,




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
newtype TimestampDataType = TimestampDataType (ManagedPtr TimestampDataType)
foreign import ccall "garrow_timestamp_data_type_get_type"
    c_garrow_timestamp_data_type_get_type :: IO GType

instance GObject TimestampDataType where
    gobjectType _ = c_garrow_timestamp_data_type_get_type
    

-- | Type class for types which can be safely cast to `TimestampDataType`, for instance with `toTimestampDataType`.
class GObject o => IsTimestampDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError TimestampDataType a) =>
    IsTimestampDataType a
#endif
instance IsTimestampDataType TimestampDataType
instance Arrow.DataType.IsDataType TimestampDataType
instance GObject.Object.IsObject TimestampDataType

-- | Cast to `TimestampDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTimestampDataType :: (MonadIO m, IsTimestampDataType o) => o -> m TimestampDataType
toTimestampDataType = liftIO . unsafeCastTo TimestampDataType

-- | A convenience alias for `Nothing` :: `Maybe` `TimestampDataType`.
noTimestampDataType :: Maybe TimestampDataType
noTimestampDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveTimestampDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveTimestampDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTimestampDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTimestampDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveTimestampDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTimestampDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTimestampDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTimestampDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTimestampDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTimestampDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTimestampDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTimestampDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTimestampDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTimestampDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTimestampDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTimestampDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTimestampDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveTimestampDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTimestampDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTimestampDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTimestampDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveTimestampDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTimestampDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTimestampDataTypeMethod "getUnit" o = TimestampDataTypeGetUnitMethodInfo
    ResolveTimestampDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTimestampDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTimestampDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTimestampDataTypeMethod t TimestampDataType, O.MethodInfo info TimestampDataType p) => O.IsLabelProxy t (TimestampDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTimestampDataTypeMethod t TimestampDataType, O.MethodInfo info TimestampDataType p) => O.IsLabel t (TimestampDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList TimestampDataType
type instance O.AttributeList TimestampDataType = TimestampDataTypeAttributeList
type TimestampDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList TimestampDataType = TimestampDataTypeSignalList
type TimestampDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method TimestampDataType::new
-- method type : Constructor
-- Args : [Arg {argCName = "unit", argType = TInterface (Name {namespace = "Arrow", name = "TimeUnit"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The unit of the timestamp data.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "TimestampDataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_timestamp_data_type_new" garrow_timestamp_data_type_new :: 
    CUInt ->                                -- unit : TInterface (Name {namespace = "Arrow", name = "TimeUnit"})
    IO (Ptr TimestampDataType)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
timestampDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Arrow.Enums.TimeUnit
    {- ^ /@unit@/: The unit of the timestamp data. -}
    -> m TimestampDataType
    {- ^ __Returns:__ A newly created the number of
  seconds\/milliseconds\/microseconds\/nanoseconds since UNIX epoch in
  64-bit signed integer data type. -}
timestampDataTypeNew unit = liftIO $ do
    let unit' = (fromIntegral . fromEnum) unit
    result <- garrow_timestamp_data_type_new unit'
    checkUnexpectedReturnNULL "timestampDataTypeNew" result
    result' <- (wrapObject TimestampDataType) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method TimestampDataType::get_unit
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "timestamp_data_type", argType = TInterface (Name {namespace = "Arrow", name = "TimestampDataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The #GArrowTimestampDataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "TimeUnit"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_timestamp_data_type_get_unit" garrow_timestamp_data_type_get_unit :: 
    Ptr TimestampDataType ->                -- timestamp_data_type : TInterface (Name {namespace = "Arrow", name = "TimestampDataType"})
    IO CUInt

{- |
/No description available in the introspection data./

@since 0.8.0
-}
timestampDataTypeGetUnit ::
    (B.CallStack.HasCallStack, MonadIO m, IsTimestampDataType a) =>
    a
    {- ^ /@timestampDataType@/: The 'GI.Arrow.Objects.TimestampDataType.TimestampDataType'. -}
    -> m Arrow.Enums.TimeUnit
    {- ^ __Returns:__ The unit of the timestamp data type. -}
timestampDataTypeGetUnit timestampDataType = liftIO $ do
    timestampDataType' <- unsafeManagedPtrCastPtr timestampDataType
    result <- garrow_timestamp_data_type_get_unit timestampDataType'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr timestampDataType
    return result'

#if ENABLE_OVERLOADING
data TimestampDataTypeGetUnitMethodInfo
instance (signature ~ (m Arrow.Enums.TimeUnit), MonadIO m, IsTimestampDataType a) => O.MethodInfo TimestampDataTypeGetUnitMethodInfo a signature where
    overloadedMethod _ = timestampDataTypeGetUnit

#endif


