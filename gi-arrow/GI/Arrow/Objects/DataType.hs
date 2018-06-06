

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.DataType
    ( 

-- * Exported types
    DataType(..)                            ,
    IsDataType                              ,
    toDataType                              ,
    noDataType                              ,


 -- * Methods
-- ** equal #method:equal#

#if ENABLE_OVERLOADING
    DataTypeEqualMethodInfo                 ,
#endif
    dataTypeEqual                           ,


-- ** getId #method:getId#

#if ENABLE_OVERLOADING
    DataTypeGetIdMethodInfo                 ,
#endif
    dataTypeGetId                           ,


-- ** toString #method:toString#

#if ENABLE_OVERLOADING
    DataTypeToStringMethodInfo              ,
#endif
    dataTypeToString                        ,




 -- * Properties
-- ** dataType #attr:dataType#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    DataTypeDataTypePropertyInfo            ,
#endif
    constructDataTypeDataType               ,
#if ENABLE_OVERLOADING
    dataTypeDataType                        ,
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

import {-# SOURCE #-} qualified GI.Arrow.Enums as Arrow.Enums
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype DataType = DataType (ManagedPtr DataType)
foreign import ccall "garrow_data_type_get_type"
    c_garrow_data_type_get_type :: IO GType

instance GObject DataType where
    gobjectType _ = c_garrow_data_type_get_type
    

-- | Type class for types which can be safely cast to `DataType`, for instance with `toDataType`.
class GObject o => IsDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError DataType a) =>
    IsDataType a
#endif
instance IsDataType DataType
instance GObject.Object.IsObject DataType

-- | Cast to `DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDataType :: (MonadIO m, IsDataType o) => o -> m DataType
toDataType = liftIO . unsafeCastTo DataType

-- | A convenience alias for `Nothing` :: `Maybe` `DataType`.
noDataType :: Maybe DataType
noDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDataTypeMethod "equal" o = DataTypeEqualMethodInfo
    ResolveDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDataTypeMethod "toString" o = DataTypeToStringMethodInfo
    ResolveDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDataTypeMethod "getId" o = DataTypeGetIdMethodInfo
    ResolveDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDataTypeMethod t DataType, O.MethodInfo info DataType p) => O.IsLabelProxy t (DataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveDataTypeMethod t DataType, O.MethodInfo info DataType p) => O.IsLabel t (DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "data-type"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@data-type@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructDataTypeDataType :: (IsDataType o) => Ptr () -> IO (GValueConstruct o)
constructDataTypeDataType val = constructObjectPropertyPtr "data-type" val

#if ENABLE_OVERLOADING
data DataTypeDataTypePropertyInfo
instance AttrInfo DataTypeDataTypePropertyInfo where
    type AttrAllowedOps DataTypeDataTypePropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint DataTypeDataTypePropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint DataTypeDataTypePropertyInfo = IsDataType
    type AttrGetType DataTypeDataTypePropertyInfo = ()
    type AttrLabel DataTypeDataTypePropertyInfo = "data-type"
    type AttrOrigin DataTypeDataTypePropertyInfo = DataType
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructDataTypeDataType
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList DataType
type instance O.AttributeList DataType = DataTypeAttributeList
type DataTypeAttributeList = ('[ '("dataType", DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
dataTypeDataType :: AttrLabelProxy "dataType"
dataTypeDataType = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList DataType = DataTypeSignalList
type DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DataType::equal
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "other_data_type", argType = TInterface (Name {namespace = "Arrow", name = "DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDataType to be compared.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_data_type_equal" garrow_data_type_equal :: 
    Ptr DataType ->                         -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    Ptr DataType ->                         -- other_data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    IO CInt

{- |
/No description available in the introspection data./
-}
dataTypeEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsDataType a, IsDataType b) =>
    a
    {- ^ /@dataType@/: A 'GI.Arrow.Objects.DataType.DataType'. -}
    -> b
    {- ^ /@otherDataType@/: A 'GI.Arrow.Objects.DataType.DataType' to be compared. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if both of them have the same data, 'False'
  otherwise. -}
dataTypeEqual dataType otherDataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    otherDataType' <- unsafeManagedPtrCastPtr otherDataType
    result <- garrow_data_type_equal dataType' otherDataType'
    let result' = (/= 0) result
    touchManagedPtr dataType
    touchManagedPtr otherDataType
    return result'

#if ENABLE_OVERLOADING
data DataTypeEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsDataType a, IsDataType b) => O.MethodInfo DataTypeEqualMethodInfo a signature where
    overloadedMethod _ = dataTypeEqual

#endif

-- method DataType::get_id
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Type"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_data_type_get_id" garrow_data_type_get_id :: 
    Ptr DataType ->                         -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    IO CUInt

{- |
/No description available in the introspection data./
-}
dataTypeGetId ::
    (B.CallStack.HasCallStack, MonadIO m, IsDataType a) =>
    a
    {- ^ /@dataType@/: A 'GI.Arrow.Objects.DataType.DataType'. -}
    -> m Arrow.Enums.Type
    {- ^ __Returns:__ The 'GI.Arrow.Enums.Type' of the data type. -}
dataTypeGetId dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_data_type_get_id dataType'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr dataType
    return result'

#if ENABLE_OVERLOADING
data DataTypeGetIdMethodInfo
instance (signature ~ (m Arrow.Enums.Type), MonadIO m, IsDataType a) => O.MethodInfo DataTypeGetIdMethodInfo a signature where
    overloadedMethod _ = dataTypeGetId

#endif

-- method DataType::to_string
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_data_type_to_string" garrow_data_type_to_string :: 
    Ptr DataType ->                         -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    IO CString

{- |
/No description available in the introspection data./
-}
dataTypeToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsDataType a) =>
    a
    {- ^ /@dataType@/: A 'GI.Arrow.Objects.DataType.DataType'. -}
    -> m T.Text
    {- ^ __Returns:__ The string representation of the data type. The caller
  must free it by 'GI.GLib.Functions.free' when the caller doesn\'t need it anymore. -}
dataTypeToString dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_data_type_to_string dataType'
    checkUnexpectedReturnNULL "dataTypeToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr dataType
    return result'

#if ENABLE_OVERLOADING
data DataTypeToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsDataType a) => O.MethodInfo DataTypeToStringMethodInfo a signature where
    overloadedMethod _ = dataTypeToString

#endif


