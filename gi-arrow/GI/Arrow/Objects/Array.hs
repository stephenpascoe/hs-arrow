

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Array
    ( 

-- * Exported types
    Array(..)                               ,
    IsArray                                 ,
    toArray                                 ,
    noArray                                 ,


 -- * Methods
-- ** cast #method:cast#

#if ENABLE_OVERLOADING
    ArrayCastMethodInfo                     ,
#endif
    arrayCast                               ,


-- ** dictionaryEncode #method:dictionaryEncode#

#if ENABLE_OVERLOADING
    ArrayDictionaryEncodeMethodInfo         ,
#endif
    arrayDictionaryEncode                   ,


-- ** equal #method:equal#

#if ENABLE_OVERLOADING
    ArrayEqualMethodInfo                    ,
#endif
    arrayEqual                              ,


-- ** equalApprox #method:equalApprox#

#if ENABLE_OVERLOADING
    ArrayEqualApproxMethodInfo              ,
#endif
    arrayEqualApprox                        ,


-- ** equalRange #method:equalRange#

#if ENABLE_OVERLOADING
    ArrayEqualRangeMethodInfo               ,
#endif
    arrayEqualRange                         ,


-- ** getLength #method:getLength#

#if ENABLE_OVERLOADING
    ArrayGetLengthMethodInfo                ,
#endif
    arrayGetLength                          ,


-- ** getNNulls #method:getNNulls#

#if ENABLE_OVERLOADING
    ArrayGetNNullsMethodInfo                ,
#endif
    arrayGetNNulls                          ,


-- ** getNullBitmap #method:getNullBitmap#

#if ENABLE_OVERLOADING
    ArrayGetNullBitmapMethodInfo            ,
#endif
    arrayGetNullBitmap                      ,


-- ** getOffset #method:getOffset#

#if ENABLE_OVERLOADING
    ArrayGetOffsetMethodInfo                ,
#endif
    arrayGetOffset                          ,


-- ** getValueDataType #method:getValueDataType#

#if ENABLE_OVERLOADING
    ArrayGetValueDataTypeMethodInfo         ,
#endif
    arrayGetValueDataType                   ,


-- ** getValueType #method:getValueType#

#if ENABLE_OVERLOADING
    ArrayGetValueTypeMethodInfo             ,
#endif
    arrayGetValueType                       ,


-- ** isNull #method:isNull#

#if ENABLE_OVERLOADING
    ArrayIsNullMethodInfo                   ,
#endif
    arrayIsNull                             ,


-- ** isValid #method:isValid#

#if ENABLE_OVERLOADING
    ArrayIsValidMethodInfo                  ,
#endif
    arrayIsValid                            ,


-- ** slice #method:slice#

#if ENABLE_OVERLOADING
    ArraySliceMethodInfo                    ,
#endif
    arraySlice                              ,


-- ** toString #method:toString#

#if ENABLE_OVERLOADING
    ArrayToStringMethodInfo                 ,
#endif
    arrayToString                           ,


-- ** unique #method:unique#

#if ENABLE_OVERLOADING
    ArrayUniqueMethodInfo                   ,
#endif
    arrayUnique                             ,




 -- * Properties
-- ** array #attr:array#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    ArrayArrayPropertyInfo                  ,
#endif
#if ENABLE_OVERLOADING
    arrayArray                              ,
#endif
    constructArrayArray                     ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import {-# SOURCE #-} qualified GI.Arrow.Objects.CastOptions as Arrow.CastOptions
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Array = Array (ManagedPtr Array)
foreign import ccall "garrow_array_get_type"
    c_garrow_array_get_type :: IO GType

instance GObject Array where
    gobjectType _ = c_garrow_array_get_type
    

-- | Type class for types which can be safely cast to `Array`, for instance with `toArray`.
class GObject o => IsArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Array a) =>
    IsArray a
#endif
instance IsArray Array
instance GObject.Object.IsObject Array

-- | Cast to `Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toArray :: (MonadIO m, IsArray o) => o -> m Array
toArray = liftIO . unsafeCastTo Array

-- | A convenience alias for `Nothing` :: `Maybe` `Array`.
noArray :: Maybe Array
noArray = Nothing

#if ENABLE_OVERLOADING
type family ResolveArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveArrayMethod "cast" o = ArrayCastMethodInfo
    ResolveArrayMethod "dictionaryEncode" o = ArrayDictionaryEncodeMethodInfo
    ResolveArrayMethod "equal" o = ArrayEqualMethodInfo
    ResolveArrayMethod "equalApprox" o = ArrayEqualApproxMethodInfo
    ResolveArrayMethod "equalRange" o = ArrayEqualRangeMethodInfo
    ResolveArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveArrayMethod "isNull" o = ArrayIsNullMethodInfo
    ResolveArrayMethod "isValid" o = ArrayIsValidMethodInfo
    ResolveArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveArrayMethod "slice" o = ArraySliceMethodInfo
    ResolveArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveArrayMethod "toString" o = ArrayToStringMethodInfo
    ResolveArrayMethod "unique" o = ArrayUniqueMethodInfo
    ResolveArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveArrayMethod "getLength" o = ArrayGetLengthMethodInfo
    ResolveArrayMethod "getNNulls" o = ArrayGetNNullsMethodInfo
    ResolveArrayMethod "getNullBitmap" o = ArrayGetNullBitmapMethodInfo
    ResolveArrayMethod "getOffset" o = ArrayGetOffsetMethodInfo
    ResolveArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveArrayMethod "getValueDataType" o = ArrayGetValueDataTypeMethodInfo
    ResolveArrayMethod "getValueType" o = ArrayGetValueTypeMethodInfo
    ResolveArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveArrayMethod t Array, O.MethodInfo info Array p) => O.IsLabelProxy t (Array -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveArrayMethod t Array, O.MethodInfo info Array p) => O.IsLabel t (Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "array"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@array@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructArrayArray :: (IsArray o) => Ptr () -> IO (GValueConstruct o)
constructArrayArray val = constructObjectPropertyPtr "array" val

#if ENABLE_OVERLOADING
data ArrayArrayPropertyInfo
instance AttrInfo ArrayArrayPropertyInfo where
    type AttrAllowedOps ArrayArrayPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint ArrayArrayPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint ArrayArrayPropertyInfo = IsArray
    type AttrGetType ArrayArrayPropertyInfo = ()
    type AttrLabel ArrayArrayPropertyInfo = "array"
    type AttrOrigin ArrayArrayPropertyInfo = Array
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructArrayArray
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Array
type instance O.AttributeList Array = ArrayAttributeList
type ArrayAttributeList = ('[ '("array", ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
arrayArray :: AttrLabelProxy "array"
arrayArray = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Array = ArraySignalList
type ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Array::cast
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "target_data_type", argType = TInterface (Name {namespace = "Arrow", name = "DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDataType of cast target data.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "options", argType = TInterface (Name {namespace = "Arrow", name = "CastOptions"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "A #GArrowCastOptions.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Array"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_array_cast" garrow_array_cast :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr Arrow.DataType.DataType ->          -- target_data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    Ptr Arrow.CastOptions.CastOptions ->    -- options : TInterface (Name {namespace = "Arrow", name = "CastOptions"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Array)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
arrayCast ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a, Arrow.DataType.IsDataType b, Arrow.CastOptions.IsCastOptions c) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> b
    {- ^ /@targetDataType@/: A 'GI.Arrow.Objects.DataType.DataType' of cast target data. -}
    -> Maybe (c)
    {- ^ /@options@/: A 'GI.Arrow.Objects.CastOptions.CastOptions'. -}
    -> m (Maybe Array)
    {- ^ __Returns:__ 
  A newly created casted array on success, 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
arrayCast array targetDataType options = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    targetDataType' <- unsafeManagedPtrCastPtr targetDataType
    maybeOptions <- case options of
        Nothing -> return nullPtr
        Just jOptions -> do
            jOptions' <- unsafeManagedPtrCastPtr jOptions
            return jOptions'
    onException (do
        result <- propagateGError $ garrow_array_cast array' targetDataType' maybeOptions
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Array) result'
            return result''
        touchManagedPtr array
        touchManagedPtr targetDataType
        whenJust options touchManagedPtr
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data ArrayCastMethodInfo
instance (signature ~ (b -> Maybe (c) -> m (Maybe Array)), MonadIO m, IsArray a, Arrow.DataType.IsDataType b, Arrow.CastOptions.IsCastOptions c) => O.MethodInfo ArrayCastMethodInfo a signature where
    overloadedMethod _ = arrayCast

#endif

-- method Array::dictionary_encode
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Array"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_array_dictionary_encode" garrow_array_dictionary_encode :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Array)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
arrayDictionaryEncode ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> m (Maybe Array)
    {- ^ __Returns:__ 
  A newly created 'GI.Arrow.Objects.DictionaryArray.DictionaryArray' for the /@array@/ on success,
  'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
arrayDictionaryEncode array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_array_dictionary_encode array'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Array) result'
            return result''
        touchManagedPtr array
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data ArrayDictionaryEncodeMethodInfo
instance (signature ~ (m (Maybe Array)), MonadIO m, IsArray a) => O.MethodInfo ArrayDictionaryEncodeMethodInfo a signature where
    overloadedMethod _ = arrayDictionaryEncode

#endif

-- method Array::equal
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "other_array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray to be compared.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_equal" garrow_array_equal :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr Array ->                            -- other_array : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
arrayEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a, IsArray b) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> b
    {- ^ /@otherArray@/: A 'GI.Arrow.Objects.Array.Array' to be compared. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if both of them have the same data, 'False'
  otherwise. -}
arrayEqual array otherArray = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    otherArray' <- unsafeManagedPtrCastPtr otherArray
    result <- garrow_array_equal array' otherArray'
    let result' = (/= 0) result
    touchManagedPtr array
    touchManagedPtr otherArray
    return result'

#if ENABLE_OVERLOADING
data ArrayEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsArray a, IsArray b) => O.MethodInfo ArrayEqualMethodInfo a signature where
    overloadedMethod _ = arrayEqual

#endif

-- method Array::equal_approx
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "other_array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray to be compared.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_equal_approx" garrow_array_equal_approx :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr Array ->                            -- other_array : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
arrayEqualApprox ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a, IsArray b) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> b
    {- ^ /@otherArray@/: A 'GI.Arrow.Objects.Array.Array' to be compared. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if both of them have the approx same data, 'False'
  otherwise. -}
arrayEqualApprox array otherArray = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    otherArray' <- unsafeManagedPtrCastPtr otherArray
    result <- garrow_array_equal_approx array' otherArray'
    let result' = (/= 0) result
    touchManagedPtr array
    touchManagedPtr otherArray
    return result'

#if ENABLE_OVERLOADING
data ArrayEqualApproxMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsArray a, IsArray b) => O.MethodInfo ArrayEqualApproxMethodInfo a signature where
    overloadedMethod _ = arrayEqualApprox

#endif

-- method Array::equal_range
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "start_index", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The start index of @array to be used.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "other_array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray to be compared.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "other_start_index", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The start index of @other_array to be used.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "end_index", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The end index of @array to be used. The end index of\n  @other_array is \"@other_start_index + (@end_index -\n  @start_index)\".", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_equal_range" garrow_array_equal_range :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Int64 ->                                -- start_index : TBasicType TInt64
    Ptr Array ->                            -- other_array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Int64 ->                                -- other_start_index : TBasicType TInt64
    Int64 ->                                -- end_index : TBasicType TInt64
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
arrayEqualRange ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a, IsArray b) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> Int64
    {- ^ /@startIndex@/: The start index of /@array@/ to be used. -}
    -> b
    {- ^ /@otherArray@/: A 'GI.Arrow.Objects.Array.Array' to be compared. -}
    -> Int64
    {- ^ /@otherStartIndex@/: The start index of /@otherArray@/ to be used. -}
    -> Int64
    {- ^ /@endIndex@/: The end index of /@array@/ to be used. The end index of
  /@otherArray@/ is \"/@otherStartIndex@/ + (/@endIndex@/ -
  /@startIndex@/)\". -}
    -> m Bool
    {- ^ __Returns:__ 'True' if both of them have the same data in the range,
  'False' otherwise. -}
arrayEqualRange array startIndex otherArray otherStartIndex endIndex = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    otherArray' <- unsafeManagedPtrCastPtr otherArray
    result <- garrow_array_equal_range array' startIndex otherArray' otherStartIndex endIndex
    let result' = (/= 0) result
    touchManagedPtr array
    touchManagedPtr otherArray
    return result'

#if ENABLE_OVERLOADING
data ArrayEqualRangeMethodInfo
instance (signature ~ (Int64 -> b -> Int64 -> Int64 -> m Bool), MonadIO m, IsArray a, IsArray b) => O.MethodInfo ArrayEqualRangeMethodInfo a signature where
    overloadedMethod _ = arrayEqualRange

#endif

-- method Array::get_length
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_get_length" garrow_array_get_length :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO Int64

{- |
/No description available in the introspection data./
-}
arrayGetLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> m Int64
    {- ^ __Returns:__ The number of rows in the array. -}
arrayGetLength array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_array_get_length array'
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data ArrayGetLengthMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsArray a) => O.MethodInfo ArrayGetLengthMethodInfo a signature where
    overloadedMethod _ = arrayGetLength

#endif

-- method Array::get_n_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_get_n_nulls" garrow_array_get_n_nulls :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO Int64

{- |
/No description available in the introspection data./
-}
arrayGetNNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> m Int64
    {- ^ __Returns:__ The number of NULLs in the array. -}
arrayGetNNulls array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_array_get_n_nulls array'
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data ArrayGetNNullsMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsArray a) => O.MethodInfo ArrayGetNNullsMethodInfo a signature where
    overloadedMethod _ = arrayGetNNulls

#endif

-- method Array::get_null_bitmap
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Buffer"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_get_null_bitmap" garrow_array_get_null_bitmap :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO (Ptr Arrow.Buffer.Buffer)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
arrayGetNullBitmap ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> m (Maybe Arrow.Buffer.Buffer)
    {- ^ __Returns:__ The bitmap that indicates null
  value indexes for the array as 'GI.Arrow.Objects.Buffer.Buffer' or 'Nothing' when
  'GI.Arrow.Objects.Array.arrayGetNNulls' returns 0. -}
arrayGetNullBitmap array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_array_get_null_bitmap array'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Arrow.Buffer.Buffer) result'
        return result''
    touchManagedPtr array
    return maybeResult

#if ENABLE_OVERLOADING
data ArrayGetNullBitmapMethodInfo
instance (signature ~ (m (Maybe Arrow.Buffer.Buffer)), MonadIO m, IsArray a) => O.MethodInfo ArrayGetNullBitmapMethodInfo a signature where
    overloadedMethod _ = arrayGetNullBitmap

#endif

-- method Array::get_offset
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_get_offset" garrow_array_get_offset :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO Int64

{- |
/No description available in the introspection data./
-}
arrayGetOffset ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> m Int64
    {- ^ __Returns:__ The number of values in the array. -}
arrayGetOffset array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_array_get_offset array'
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data ArrayGetOffsetMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsArray a) => O.MethodInfo ArrayGetOffsetMethodInfo a signature where
    overloadedMethod _ = arrayGetOffset

#endif

-- method Array::get_value_data_type
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_get_value_data_type" garrow_array_get_value_data_type :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO (Ptr Arrow.DataType.DataType)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
arrayGetValueDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> m Arrow.DataType.DataType
    {- ^ __Returns:__ The 'GI.Arrow.Objects.DataType.DataType' for each value of the
  array. -}
arrayGetValueDataType array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_array_get_value_data_type array'
    checkUnexpectedReturnNULL "arrayGetValueDataType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data ArrayGetValueDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsArray a) => O.MethodInfo ArrayGetValueDataTypeMethodInfo a signature where
    overloadedMethod _ = arrayGetValueDataType

#endif

-- method Array::get_value_type
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Type"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_get_value_type" garrow_array_get_value_type :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO CUInt

{- |
/No description available in the introspection data./

@since 0.3.0
-}
arrayGetValueType ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> m Arrow.Enums.Type
    {- ^ __Returns:__ The 'GI.Arrow.Enums.Type' for each value of the array. -}
arrayGetValueType array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_array_get_value_type array'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data ArrayGetValueTypeMethodInfo
instance (signature ~ (m Arrow.Enums.Type), MonadIO m, IsArray a) => O.MethodInfo ArrayGetValueTypeMethodInfo a signature where
    overloadedMethod _ = arrayGetValueType

#endif

-- method Array::is_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_is_null" garrow_array_is_null :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO CInt

{- |
/No description available in the introspection data./

@since 0.3.0
-}
arrayIsNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Bool
    {- ^ __Returns:__ Whether the i-th value is null or not. -}
arrayIsNull array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_array_is_null array' i
    let result' = (/= 0) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data ArrayIsNullMethodInfo
instance (signature ~ (Int64 -> m Bool), MonadIO m, IsArray a) => O.MethodInfo ArrayIsNullMethodInfo a signature where
    overloadedMethod _ = arrayIsNull

#endif

-- method Array::is_valid
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_is_valid" garrow_array_is_valid :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO CInt

{- |
/No description available in the introspection data./

@since 0.8.0
-}
arrayIsValid ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Bool
    {- ^ __Returns:__ Whether the i-th value is valid (not null) or not. -}
arrayIsValid array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_array_is_valid array' i
    let result' = (/= 0) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data ArrayIsValidMethodInfo
instance (signature ~ (Int64 -> m Bool), MonadIO m, IsArray a) => O.MethodInfo ArrayIsValidMethodInfo a signature where
    overloadedMethod _ = arrayIsValid

#endif

-- method Array::slice
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "offset", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The offset of sub #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of sub #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_slice" garrow_array_slice :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Int64 ->                                -- offset : TBasicType TInt64
    Int64 ->                                -- length : TBasicType TInt64
    IO (Ptr Array)

{- |
/No description available in the introspection data./
-}
arraySlice ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> Int64
    {- ^ /@offset@/: The offset of sub 'GI.Arrow.Objects.Array.Array'. -}
    -> Int64
    {- ^ /@length@/: The length of sub 'GI.Arrow.Objects.Array.Array'. -}
    -> m Array
    {- ^ __Returns:__ The sub 'GI.Arrow.Objects.Array.Array'. It covers only from
  @offset@ to @offset + length@ range. The sub 'GI.Arrow.Objects.Array.Array' shares
  values with the base 'GI.Arrow.Objects.Array.Array'. -}
arraySlice array offset length_ = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_array_slice array' offset length_
    checkUnexpectedReturnNULL "arraySlice" result
    result' <- (wrapObject Array) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data ArraySliceMethodInfo
instance (signature ~ (Int64 -> Int64 -> m Array), MonadIO m, IsArray a) => O.MethodInfo ArraySliceMethodInfo a signature where
    overloadedMethod _ = arraySlice

#endif

-- method Array::to_string
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_array_to_string" garrow_array_to_string :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr (Ptr GError) ->                     -- error
    IO CString

{- |
/No description available in the introspection data./

@since 0.4.0
-}
arrayToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> m (Maybe T.Text)
    {- ^ __Returns:__ The formatted array content or 'Nothing' on error.

  The returned string should be freed when with 'GI.GLib.Functions.free' when no
  longer needed. /(Can throw 'Data.GI.Base.GError.GError')/ -}
arrayToString array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_array_to_string array'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- cstringToText result'
            freeMem result'
            return result''
        touchManagedPtr array
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data ArrayToStringMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsArray a) => O.MethodInfo ArrayToStringMethodInfo a signature where
    overloadedMethod _ = arrayToString

#endif

-- method Array::unique
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Array"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_array_unique" garrow_array_unique :: 
    Ptr Array ->                            -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Array)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
arrayUnique ::
    (B.CallStack.HasCallStack, MonadIO m, IsArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Array.Array'. -}
    -> m (Maybe Array)
    {- ^ __Returns:__ 
  A newly created unique elements array on success, 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
arrayUnique array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        result <- propagateGError $ garrow_array_unique array'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Array) result'
            return result''
        touchManagedPtr array
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data ArrayUniqueMethodInfo
instance (signature ~ (m (Maybe Array)), MonadIO m, IsArray a) => O.MethodInfo ArrayUniqueMethodInfo a signature where
    overloadedMethod _ = arrayUnique

#endif


