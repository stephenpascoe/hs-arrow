

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.TimestampArray
    ( 

-- * Exported types
    TimestampArray(..)                      ,
    IsTimestampArray                        ,
    toTimestampArray                        ,
    noTimestampArray                        ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    TimestampArrayGetValueMethodInfo        ,
#endif
    timestampArrayGetValue                  ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    TimestampArrayGetValuesMethodInfo       ,
#endif
    timestampArrayGetValues                 ,


-- ** new #method:new#

    timestampArrayNew                       ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import {-# SOURCE #-} qualified GI.Arrow.Objects.NumericArray as Arrow.NumericArray
import {-# SOURCE #-} qualified GI.Arrow.Objects.PrimitiveArray as Arrow.PrimitiveArray
import {-# SOURCE #-} qualified GI.Arrow.Objects.TimestampDataType as Arrow.TimestampDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype TimestampArray = TimestampArray (ManagedPtr TimestampArray)
foreign import ccall "garrow_timestamp_array_get_type"
    c_garrow_timestamp_array_get_type :: IO GType

instance GObject TimestampArray where
    gobjectType _ = c_garrow_timestamp_array_get_type
    

-- | Type class for types which can be safely cast to `TimestampArray`, for instance with `toTimestampArray`.
class GObject o => IsTimestampArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError TimestampArray a) =>
    IsTimestampArray a
#endif
instance IsTimestampArray TimestampArray
instance Arrow.NumericArray.IsNumericArray TimestampArray
instance Arrow.PrimitiveArray.IsPrimitiveArray TimestampArray
instance Arrow.Array.IsArray TimestampArray
instance GObject.Object.IsObject TimestampArray

-- | Cast to `TimestampArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTimestampArray :: (MonadIO m, IsTimestampArray o) => o -> m TimestampArray
toTimestampArray = liftIO . unsafeCastTo TimestampArray

-- | A convenience alias for `Nothing` :: `Maybe` `TimestampArray`.
noTimestampArray :: Maybe TimestampArray
noTimestampArray = Nothing

#if ENABLE_OVERLOADING
type family ResolveTimestampArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveTimestampArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTimestampArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTimestampArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveTimestampArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveTimestampArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveTimestampArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveTimestampArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveTimestampArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTimestampArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTimestampArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTimestampArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTimestampArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveTimestampArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveTimestampArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTimestampArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTimestampArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTimestampArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTimestampArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTimestampArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveTimestampArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTimestampArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTimestampArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTimestampArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveTimestampArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveTimestampArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTimestampArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTimestampArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveTimestampArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTimestampArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveTimestampArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveTimestampArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveTimestampArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveTimestampArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTimestampArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTimestampArrayMethod "getValue" o = TimestampArrayGetValueMethodInfo
    ResolveTimestampArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveTimestampArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveTimestampArrayMethod "getValues" o = TimestampArrayGetValuesMethodInfo
    ResolveTimestampArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTimestampArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTimestampArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTimestampArrayMethod t TimestampArray, O.MethodInfo info TimestampArray p) => O.IsLabelProxy t (TimestampArray -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTimestampArrayMethod t TimestampArray, O.MethodInfo info TimestampArray p) => O.IsLabel t (TimestampArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList TimestampArray
type instance O.AttributeList TimestampArray = TimestampArrayAttributeList
type TimestampArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList TimestampArray = TimestampArraySignalList
type TimestampArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method TimestampArray::new
-- method type : Constructor
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "TimestampDataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The #GArrowTimestampDataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "TimestampArray"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_timestamp_array_new" garrow_timestamp_array_new :: 
    Ptr Arrow.TimestampDataType.TimestampDataType -> -- data_type : TInterface (Name {namespace = "Arrow", name = "TimestampDataType"})
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr TimestampArray)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
timestampArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.TimestampDataType.IsTimestampDataType a, Arrow.Buffer.IsBuffer b, Arrow.Buffer.IsBuffer c) =>
    a
    {- ^ /@dataType@/: The 'GI.Arrow.Objects.TimestampDataType.TimestampDataType'. -}
    -> Int64
    {- ^ /@length@/: The number of elements. -}
    -> b
    {- ^ /@data@/: The binary data in Arrow format of the array. -}
    -> Maybe (c)
    {- ^ /@nullBitmap@/: The bitmap that shows null elements. The
  N-th element is null when the N-th bit is 0, not null otherwise.
  If the array has no null elements, the bitmap must be 'Nothing' and
  /@nNulls@/ is 0. -}
    -> Int64
    {- ^ /@nNulls@/: The number of null elements. If -1 is specified, the
  number of nulls are computed from /@nullBitmap@/. -}
    -> m TimestampArray
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.TimestampArray.TimestampArray'. -}
timestampArrayNew dataType length_ data_ nullBitmap nNulls = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_timestamp_array_new dataType' length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "timestampArrayNew" result
    result' <- (wrapObject TimestampArray) result
    touchManagedPtr dataType
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method TimestampArray::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "TimestampArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTimestampArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_timestamp_array_get_value" garrow_timestamp_array_get_value :: 
    Ptr TimestampArray ->                   -- array : TInterface (Name {namespace = "Arrow", name = "TimestampArray"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Int64

{- |
/No description available in the introspection data./

@since 0.7.0
-}
timestampArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsTimestampArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.TimestampArray.TimestampArray'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Int64
    {- ^ __Returns:__ The i-th value. -}
timestampArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_timestamp_array_get_value array' i
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data TimestampArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Int64), MonadIO m, IsTimestampArray a) => O.MethodInfo TimestampArrayGetValueMethodInfo a signature where
    overloadedMethod _ = timestampArrayGetValue

#endif

-- method TimestampArray::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "TimestampArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTimestampArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TInt64))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_timestamp_array_get_values" garrow_timestamp_array_get_values :: 
    Ptr TimestampArray ->                   -- array : TInterface (Name {namespace = "Arrow", name = "TimestampArray"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Int64)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
timestampArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsTimestampArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.TimestampArray.TimestampArray'. -}
    -> m [Int64]
    {- ^ __Returns:__ The raw values. -}
timestampArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_timestamp_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "timestampArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data TimestampArrayGetValuesMethodInfo
instance (signature ~ (m [Int64]), MonadIO m, IsTimestampArray a) => O.MethodInfo TimestampArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = timestampArrayGetValues

#endif


