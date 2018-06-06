

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.DictionaryArray
    ( 

-- * Exported types
    DictionaryArray(..)                     ,
    IsDictionaryArray                       ,
    toDictionaryArray                       ,
    noDictionaryArray                       ,


 -- * Methods
-- ** getDictionary #method:getDictionary#

#if ENABLE_OVERLOADING
    DictionaryArrayGetDictionaryMethodInfo  ,
#endif
    dictionaryArrayGetDictionary            ,


-- ** getDictionaryDataType #method:getDictionaryDataType#

#if ENABLE_OVERLOADING
    DictionaryArrayGetDictionaryDataTypeMethodInfo,
#endif
    dictionaryArrayGetDictionaryDataType    ,


-- ** getIndices #method:getIndices#

#if ENABLE_OVERLOADING
    DictionaryArrayGetIndicesMethodInfo     ,
#endif
    dictionaryArrayGetIndices               ,


-- ** new #method:new#

    dictionaryArrayNew                      ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.DictionaryDataType as Arrow.DictionaryDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype DictionaryArray = DictionaryArray (ManagedPtr DictionaryArray)
foreign import ccall "garrow_dictionary_array_get_type"
    c_garrow_dictionary_array_get_type :: IO GType

instance GObject DictionaryArray where
    gobjectType _ = c_garrow_dictionary_array_get_type
    

-- | Type class for types which can be safely cast to `DictionaryArray`, for instance with `toDictionaryArray`.
class GObject o => IsDictionaryArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError DictionaryArray a) =>
    IsDictionaryArray a
#endif
instance IsDictionaryArray DictionaryArray
instance Arrow.Array.IsArray DictionaryArray
instance GObject.Object.IsObject DictionaryArray

-- | Cast to `DictionaryArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDictionaryArray :: (MonadIO m, IsDictionaryArray o) => o -> m DictionaryArray
toDictionaryArray = liftIO . unsafeCastTo DictionaryArray

-- | A convenience alias for `Nothing` :: `Maybe` `DictionaryArray`.
noDictionaryArray :: Maybe DictionaryArray
noDictionaryArray = Nothing

#if ENABLE_OVERLOADING
type family ResolveDictionaryArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveDictionaryArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDictionaryArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDictionaryArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveDictionaryArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveDictionaryArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveDictionaryArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveDictionaryArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveDictionaryArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDictionaryArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDictionaryArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDictionaryArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDictionaryArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveDictionaryArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveDictionaryArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDictionaryArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDictionaryArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDictionaryArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDictionaryArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDictionaryArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveDictionaryArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDictionaryArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDictionaryArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDictionaryArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveDictionaryArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveDictionaryArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDictionaryArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDictionaryArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDictionaryArrayMethod "getDictionary" o = DictionaryArrayGetDictionaryMethodInfo
    ResolveDictionaryArrayMethod "getDictionaryDataType" o = DictionaryArrayGetDictionaryDataTypeMethodInfo
    ResolveDictionaryArrayMethod "getIndices" o = DictionaryArrayGetIndicesMethodInfo
    ResolveDictionaryArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveDictionaryArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveDictionaryArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveDictionaryArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveDictionaryArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDictionaryArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDictionaryArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveDictionaryArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveDictionaryArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDictionaryArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDictionaryArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDictionaryArrayMethod t DictionaryArray, O.MethodInfo info DictionaryArray p) => O.IsLabelProxy t (DictionaryArray -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveDictionaryArrayMethod t DictionaryArray, O.MethodInfo info DictionaryArray p) => O.IsLabel t (DictionaryArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList DictionaryArray
type instance O.AttributeList DictionaryArray = DictionaryArrayAttributeList
type DictionaryArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList DictionaryArray = DictionaryArraySignalList
type DictionaryArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DictionaryArray::new
-- method type : Constructor
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The data type of dictionary.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "indices", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The indices of values in dictionary.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DictionaryArray"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_array_new" garrow_dictionary_array_new :: 
    Ptr Arrow.DataType.DataType ->          -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    Ptr Arrow.Array.Array ->                -- indices : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO (Ptr DictionaryArray)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
dictionaryArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.DataType.IsDataType a, Arrow.Array.IsArray b) =>
    a
    {- ^ /@dataType@/: The data type of dictionary. -}
    -> b
    {- ^ /@indices@/: The indices of values in dictionary. -}
    -> m DictionaryArray
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.DictionaryArray.DictionaryArray'. -}
dictionaryArrayNew dataType indices = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    indices' <- unsafeManagedPtrCastPtr indices
    result <- garrow_dictionary_array_new dataType' indices'
    checkUnexpectedReturnNULL "dictionaryArrayNew" result
    result' <- (wrapObject DictionaryArray) result
    touchManagedPtr dataType
    touchManagedPtr indices
    return result'

#if ENABLE_OVERLOADING
#endif

-- method DictionaryArray::get_dictionary
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "DictionaryArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDictionaryArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_array_get_dictionary" garrow_dictionary_array_get_dictionary :: 
    Ptr DictionaryArray ->                  -- array : TInterface (Name {namespace = "Arrow", name = "DictionaryArray"})
    IO (Ptr Arrow.Array.Array)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
dictionaryArrayGetDictionary ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.DictionaryArray.DictionaryArray'. -}
    -> m Arrow.Array.Array
    {- ^ __Returns:__ The dictionary of this array. -}
dictionaryArrayGetDictionary array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_dictionary_array_get_dictionary array'
    checkUnexpectedReturnNULL "dictionaryArrayGetDictionary" result
    result' <- (wrapObject Arrow.Array.Array) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data DictionaryArrayGetDictionaryMethodInfo
instance (signature ~ (m Arrow.Array.Array), MonadIO m, IsDictionaryArray a) => O.MethodInfo DictionaryArrayGetDictionaryMethodInfo a signature where
    overloadedMethod _ = dictionaryArrayGetDictionary

#endif

-- method DictionaryArray::get_dictionary_data_type
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "DictionaryArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDictionaryArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DictionaryDataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_array_get_dictionary_data_type" garrow_dictionary_array_get_dictionary_data_type :: 
    Ptr DictionaryArray ->                  -- array : TInterface (Name {namespace = "Arrow", name = "DictionaryArray"})
    IO (Ptr Arrow.DictionaryDataType.DictionaryDataType)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
dictionaryArrayGetDictionaryDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.DictionaryArray.DictionaryArray'. -}
    -> m Arrow.DictionaryDataType.DictionaryDataType
    {- ^ __Returns:__ The dictionary data type of this array. -}
dictionaryArrayGetDictionaryDataType array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_dictionary_array_get_dictionary_data_type array'
    checkUnexpectedReturnNULL "dictionaryArrayGetDictionaryDataType" result
    result' <- (wrapObject Arrow.DictionaryDataType.DictionaryDataType) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data DictionaryArrayGetDictionaryDataTypeMethodInfo
instance (signature ~ (m Arrow.DictionaryDataType.DictionaryDataType), MonadIO m, IsDictionaryArray a) => O.MethodInfo DictionaryArrayGetDictionaryDataTypeMethodInfo a signature where
    overloadedMethod _ = dictionaryArrayGetDictionaryDataType

#endif

-- method DictionaryArray::get_indices
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "DictionaryArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDictionaryArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_dictionary_array_get_indices" garrow_dictionary_array_get_indices :: 
    Ptr DictionaryArray ->                  -- array : TInterface (Name {namespace = "Arrow", name = "DictionaryArray"})
    IO (Ptr Arrow.Array.Array)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
dictionaryArrayGetIndices ::
    (B.CallStack.HasCallStack, MonadIO m, IsDictionaryArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.DictionaryArray.DictionaryArray'. -}
    -> m Arrow.Array.Array
    {- ^ __Returns:__ The indices of values in dictionary. -}
dictionaryArrayGetIndices array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_dictionary_array_get_indices array'
    checkUnexpectedReturnNULL "dictionaryArrayGetIndices" result
    result' <- (wrapObject Arrow.Array.Array) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data DictionaryArrayGetIndicesMethodInfo
instance (signature ~ (m Arrow.Array.Array), MonadIO m, IsDictionaryArray a) => O.MethodInfo DictionaryArrayGetIndicesMethodInfo a signature where
    overloadedMethod _ = dictionaryArrayGetIndices

#endif


