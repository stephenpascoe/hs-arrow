

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Time32Type@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Time32DataType
    ( 

-- * Exported types
    Time32DataType(..)                      ,
    IsTime32DataType                        ,
    toTime32DataType                        ,
    noTime32DataType                        ,


 -- * Methods
-- ** new #method:new#

    time32DataTypeNew                       ,




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
newtype Time32DataType = Time32DataType (ManagedPtr Time32DataType)
foreign import ccall "garrow_time32_data_type_get_type"
    c_garrow_time32_data_type_get_type :: IO GType

instance GObject Time32DataType where
    gobjectType _ = c_garrow_time32_data_type_get_type
    

-- | Type class for types which can be safely cast to `Time32DataType`, for instance with `toTime32DataType`.
class GObject o => IsTime32DataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Time32DataType a) =>
    IsTime32DataType a
#endif
instance IsTime32DataType Time32DataType
instance Arrow.TimeDataType.IsTimeDataType Time32DataType
instance Arrow.DataType.IsDataType Time32DataType
instance GObject.Object.IsObject Time32DataType

-- | Cast to `Time32DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTime32DataType :: (MonadIO m, IsTime32DataType o) => o -> m Time32DataType
toTime32DataType = liftIO . unsafeCastTo Time32DataType

-- | A convenience alias for `Nothing` :: `Maybe` `Time32DataType`.
noTime32DataType :: Maybe Time32DataType
noTime32DataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveTime32DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveTime32DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTime32DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTime32DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveTime32DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTime32DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTime32DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTime32DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTime32DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTime32DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTime32DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTime32DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTime32DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTime32DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTime32DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTime32DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTime32DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveTime32DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTime32DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTime32DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTime32DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveTime32DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTime32DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTime32DataTypeMethod "getUnit" o = Arrow.TimeDataType.TimeDataTypeGetUnitMethodInfo
    ResolveTime32DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTime32DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTime32DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTime32DataTypeMethod t Time32DataType, O.MethodInfo info Time32DataType p) => O.IsLabelProxy t (Time32DataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTime32DataTypeMethod t Time32DataType, O.MethodInfo info Time32DataType p) => O.IsLabel t (Time32DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Time32DataType
type instance O.AttributeList Time32DataType = Time32DataTypeAttributeList
type Time32DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Time32DataType = Time32DataTypeSignalList
type Time32DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Time32DataType::new
-- method type : Constructor
-- Args : [Arg {argCName = "unit", argType = TInterface (Name {namespace = "Arrow", name = "TimeUnit"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "%GARROW_TIME_UNIT_SECOND or %GARROW_TIME_UNIT_MILLI.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Time32DataType"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time32_data_type_new" garrow_time32_data_type_new :: 
    CUInt ->                                -- unit : TInterface (Name {namespace = "Arrow", name = "TimeUnit"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Time32DataType)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time32DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Arrow.Enums.TimeUnit
    {- ^ /@unit@/: 'GI.Arrow.Enums.TimeUnitSecond' or 'GI.Arrow.Enums.TimeUnitMilli'. -}
    -> m (Maybe Time32DataType)
    {- ^ __Returns:__ 
  A newly created the number of seconds or milliseconds since
  midnight in 32-bit signed integer data type. /(Can throw 'Data.GI.Base.GError.GError')/ -}
time32DataTypeNew unit = liftIO $ do
    let unit' = (fromIntegral . fromEnum) unit
    onException (do
        result <- propagateGError $ garrow_time32_data_type_new unit'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Time32DataType) result'
            return result''
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
#endif


