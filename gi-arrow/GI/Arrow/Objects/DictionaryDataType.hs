

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.DictionaryDataType
    ( 

-- * Exported types
    DictionaryDataType(..)                  ,
    IsDictionaryDataType                    ,
    toDictionaryDataType                    ,
    noDictionaryDataType                    ,


 -- * Methods
-- ** getDictionary #method:getDictionary#

#if ENABLE_OVERLOADING
    DictionaryDataTypeGetDictionaryMethodInfo,
#endif
    dictionaryDataTypeGetDictionary         ,


-- ** getIndexDataType #method:getIndexDataType#

#if ENABLE_OVERLOADING
    DictionaryDataTypeGetIndexDataTypeMethodInfo,
#endif
    dictionaryDataTypeGetIndexDataType      ,


-- ** isOrdered #method:isOrdered#

#if ENABLE_OVERLOADING
    DictionaryDataTypeIsOrderedMethodInfo   ,
#endif
    dictionaryDataTypeIsOrdered             ,


-- ** new #method:new#

    dictionaryDataTypeNew                   ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Array as Arrow.Array
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedWidthDataType as Arrow.FixedWidthDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype DictionaryDataType = DictionaryDataType (ManagedPtr DictionaryDataType)
foreign import ccall "garrow_dictionary_data_type_get_type"
    c_garrow_dictionary_data_type_get_type :: IO GType

instance GObject DictionaryDataType where
    gobjectType _ = c_garrow_dictionary_data_type_get_type
    

-- | Type class for types which can be safely cast to `DictionaryDataType`, for instance with `toDictionaryDataType`.
class GObject o => IsDictionaryDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError DictionaryDataType a) =>
    IsDictionaryDataType a
#endif
instance IsDictionaryDataType DictionaryDataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType DictionaryDataType
instance Arrow.DataType.IsDataType DictionaryDataType
instance GObject.Object.IsObject DictionaryDataType

-- | Cast to `DictionaryDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDictionaryDataType :: (MonadIO m, IsDictionaryDataType o) => o -> m DictionaryDataType
toDictionaryDataType = liftIO . unsafeCastTo DictionaryDataType

-- | A convenience alias for `Nothing` :: `Maybe` `DictionaryDataType`.
noDictionaryDataType :: Maybe DictionaryDataType
noDictionaryDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveDictionaryDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveDictionaryDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDictionaryDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDictionaryDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveDictionaryDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDictionaryDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDictionaryDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDictionaryDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDictionaryDataTypeMethod "isOrdered" o = DictionaryDataTypeIsOrderedMethodInfo
    ResolveDictionaryDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDictionaryDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDictionaryDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDictionaryDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDictionaryDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDictionaryDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDictionaryDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDictionaryDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDictionaryDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveDictionaryDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDictionaryDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDictionaryDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveDictionaryDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDictionaryDataTypeMethod "getDictionary" o = DictionaryDataTypeGetDictionaryMethodInfo
    ResolveDictionaryDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveDictionaryDataTypeMethod "getIndexDataType" o = DictionaryDataTypeGetIndexDataTypeMethodInfo
    ResolveDictionaryDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDictionaryDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDictionaryDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDictionaryDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDictionaryDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDictionaryDataTypeMethod t DictionaryDataType, O.MethodInfo info DictionaryDataType p) => O.IsLabelProxy t (DictionaryDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveDictionaryDataTypeMethod t DictionaryDataType, O.MethodInfo info DictionaryDataType p) => O.IsLabel t (DictionaryDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList DictionaryDataType
type instance O.AttributeList DictionaryDataType = DictionaryDataTypeAttributeList
type DictionaryDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList DictionaryDataType = DictionaryDataTypeSignalList
type DictionaryDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DictionaryDataType::new
-- method type : Constructor
-- Args : [Arg {argCName = "index_data_type", argType = TInterface (Name {namespace = "Arrow", name = "DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The data type of index.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "dictionary", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The dictionary.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "ordered", argType = TBasicType TBoolean, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "Whether dictionary contents are ordered or not.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_data_type_new" garrow_dictionary_data_type_new :: 
    Ptr Arrow.DataType.DataType ->          -- index_data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    Ptr Arrow.Array.Array ->                -- dictionary : TInterface (Name {namespace = "Arrow", name = "Array"})
    CInt ->                                 -- ordered : TBasicType TBoolean
    IO (Ptr DictionaryDataType)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
dictionaryDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.DataType.IsDataType a, Arrow.Array.IsArray b) =>
    a
    {- ^ /@indexDataType@/: The data type of index. -}
    -> b
    {- ^ /@dictionary@/: The dictionary. -}
    -> Bool
    {- ^ /@ordered@/: Whether dictionary contents are ordered or not. -}
    -> m DictionaryDataType
    {- ^ __Returns:__ The newly created dictionary data type. -}
dictionaryDataTypeNew indexDataType dictionary ordered = liftIO $ do
    indexDataType' <- unsafeManagedPtrCastPtr indexDataType
    dictionary' <- unsafeManagedPtrCastPtr dictionary
    let ordered' = (fromIntegral . fromEnum) ordered
    result <- garrow_dictionary_data_type_new indexDataType' dictionary' ordered'
    checkUnexpectedReturnNULL "dictionaryDataTypeNew" result
    result' <- (wrapObject DictionaryDataType) result
    touchManagedPtr indexDataType
    touchManagedPtr dictionary
    return result'

#if ENABLE_OVERLOADING
#endif

-- method DictionaryDataType::get_dictionary
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The #GArrowDictionaryDataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_data_type_get_dictionary" garrow_dictionary_data_type_get_dictionary :: 
    Ptr DictionaryDataType ->               -- data_type : TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"})
    IO (Ptr Arrow.Array.Array)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
dictionaryDataTypeGetDictionary ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryDataType a) =>
    a
    {- ^ /@dataType@/: The 'GI.Arrow.Objects.DictionaryDataType.DictionaryDataType'. -}
    -> m Arrow.Array.Array
    {- ^ __Returns:__ The dictionary as 'GI.Arrow.Objects.Array.Array'. -}
dictionaryDataTypeGetDictionary dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_dictionary_data_type_get_dictionary dataType'
    checkUnexpectedReturnNULL "dictionaryDataTypeGetDictionary" result
    result' <- (wrapObject Arrow.Array.Array) result
    touchManagedPtr dataType
    return result'

#if ENABLE_OVERLOADING
data DictionaryDataTypeGetDictionaryMethodInfo
instance (signature ~ (m Arrow.Array.Array), MonadIO m, IsDictionaryDataType a) => O.MethodInfo DictionaryDataTypeGetDictionaryMethodInfo a signature where
    overloadedMethod _ = dictionaryDataTypeGetDictionary

#endif

-- method DictionaryDataType::get_index_data_type
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The #GArrowDictionaryDataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_data_type_get_index_data_type" garrow_dictionary_data_type_get_index_data_type :: 
    Ptr DictionaryDataType ->               -- data_type : TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"})
    IO (Ptr Arrow.DataType.DataType)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
dictionaryDataTypeGetIndexDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryDataType a) =>
    a
    {- ^ /@dataType@/: The 'GI.Arrow.Objects.DictionaryDataType.DictionaryDataType'. -}
    -> m Arrow.DataType.DataType
    {- ^ __Returns:__ The 'GI.Arrow.Objects.DataType.DataType' of index. -}
dictionaryDataTypeGetIndexDataType dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_dictionary_data_type_get_index_data_type dataType'
    checkUnexpectedReturnNULL "dictionaryDataTypeGetIndexDataType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr dataType
    return result'

#if ENABLE_OVERLOADING
data DictionaryDataTypeGetIndexDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsDictionaryDataType a) => O.MethodInfo DictionaryDataTypeGetIndexDataTypeMethodInfo a signature where
    overloadedMethod _ = dictionaryDataTypeGetIndexDataType

#endif

-- method DictionaryDataType::is_ordered
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The #GArrowDictionaryDataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_data_type_is_ordered" garrow_dictionary_data_type_is_ordered :: 
    Ptr DictionaryDataType ->               -- data_type : TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.8.0
-}
dictionaryDataTypeIsOrdered ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryDataType a) =>
    a
    {- ^ /@dataType@/: The 'GI.Arrow.Objects.DictionaryDataType.DictionaryDataType'. -}
    -> m Bool
    {- ^ __Returns:__ Whether dictionary contents are ordered or not. -}
dictionaryDataTypeIsOrdered dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_dictionary_data_type_is_ordered dataType'
    let result' = (/= 0) result
    touchManagedPtr dataType
    return result'

#if ENABLE_OVERLOADING
data DictionaryDataTypeIsOrderedMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsDictionaryDataType a) => O.MethodInfo DictionaryDataTypeIsOrderedMethodInfo a signature where
    overloadedMethod _ = dictionaryDataTypeIsOrdered

#endif


