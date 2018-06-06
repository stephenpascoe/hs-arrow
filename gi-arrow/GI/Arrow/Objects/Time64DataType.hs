

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Time64Type@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Time64DataType
    ( 

-- * Exported types
    Time64DataType(..)                      ,
    IsTime64DataType                        ,
    toTime64DataType                        ,
    noTime64DataType                        ,


 -- * Methods
-- ** new #method:new#

    time64DataTypeNew                       ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.TimeDataType as Arrow.TimeDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Time64DataType = Time64DataType (ManagedPtr Time64DataType)
foreign import ccall "garrow_time64_data_type_get_type"
    c_garrow_time64_data_type_get_type :: IO GType

instance GObject Time64DataType where
    gobjectType _ = c_garrow_time64_data_type_get_type
    

-- | Type class for types which can be safely cast to `Time64DataType`, for instance with `toTime64DataType`.
class GObject o => IsTime64DataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Time64DataType a) =>
    IsTime64DataType a
#endif
instance IsTime64DataType Time64DataType
instance Arrow.TimeDataType.IsTimeDataType Time64DataType
instance Arrow.DataType.IsDataType Time64DataType
instance GObject.Object.IsObject Time64DataType

-- | Cast to `Time64DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTime64DataType :: (MonadIO m, IsTime64DataType o) => o -> m Time64DataType
toTime64DataType = liftIO . unsafeCastTo Time64DataType

-- | A convenience alias for `Nothing` :: `Maybe` `Time64DataType`.
noTime64DataType :: Maybe Time64DataType
noTime64DataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveTime64DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveTime64DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTime64DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTime64DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveTime64DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTime64DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTime64DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTime64DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTime64DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTime64DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTime64DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTime64DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTime64DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTime64DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTime64DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTime64DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTime64DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveTime64DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTime64DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTime64DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTime64DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveTime64DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTime64DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTime64DataTypeMethod "getUnit" o = Arrow.TimeDataType.TimeDataTypeGetUnitMethodInfo
    ResolveTime64DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTime64DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTime64DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTime64DataTypeMethod t Time64DataType, O.MethodInfo info Time64DataType p) => O.IsLabelProxy t (Time64DataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTime64DataTypeMethod t Time64DataType, O.MethodInfo info Time64DataType p) => O.IsLabel t (Time64DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Time64DataType
type instance O.AttributeList Time64DataType = Time64DataTypeAttributeList
type Time64DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Time64DataType = Time64DataTypeSignalList
type Time64DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Time64DataType::new
-- method type : Constructor
-- Args : [Arg {argCName = "unit", argType = TInterface (Name {namespace = "Arrow", name = "TimeUnit"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "%GARROW_TIME_UNIT_SECOND or %GARROW_TIME_UNIT_MILLI.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Time64DataType"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time64_data_type_new" garrow_time64_data_type_new :: 
    CUInt ->                                -- unit : TInterface (Name {namespace = "Arrow", name = "TimeUnit"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Time64DataType)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time64DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Arrow.Enums.TimeUnit
    {- ^ /@unit@/: 'GI.Arrow.Enums.TimeUnitSecond' or 'GI.Arrow.Enums.TimeUnitMilli'. -}
    -> m (Maybe Time64DataType)
    {- ^ __Returns:__ 
  A newly created the number of seconds or milliseconds since
  midnight in 64-bit signed integer data type. /(Can throw 'Data.GI.Base.GError.GError')/ -}
time64DataTypeNew unit = liftIO $ do
    let unit' = (fromIntegral . fromEnum) unit
    onException (do
        result <- propagateGError $ garrow_time64_data_type_new unit'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Time64DataType) result'
            return result''
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
#endif


