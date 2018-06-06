

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Time64Array
    ( 

-- * Exported types
    Time64Array(..)                         ,
    IsTime64Array                           ,
    toTime64Array                           ,
    noTime64Array                           ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    Time64ArrayGetValueMethodInfo           ,
#endif
    time64ArrayGetValue                     ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    Time64ArrayGetValuesMethodInfo          ,
#endif
    time64ArrayGetValues                    ,


-- ** new #method:new#

    time64ArrayNew                          ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Time64DataType as Arrow.Time64DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Time64Array = Time64Array (ManagedPtr Time64Array)
foreign import ccall "garrow_time64_array_get_type"
    c_garrow_time64_array_get_type :: IO GType

instance GObject Time64Array where
    gobjectType _ = c_garrow_time64_array_get_type
    

-- | Type class for types which can be safely cast to `Time64Array`, for instance with `toTime64Array`.
class GObject o => IsTime64Array o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Time64Array a) =>
    IsTime64Array a
#endif
instance IsTime64Array Time64Array
instance Arrow.NumericArray.IsNumericArray Time64Array
instance Arrow.PrimitiveArray.IsPrimitiveArray Time64Array
instance Arrow.Array.IsArray Time64Array
instance GObject.Object.IsObject Time64Array

-- | Cast to `Time64Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTime64Array :: (MonadIO m, IsTime64Array o) => o -> m Time64Array
toTime64Array = liftIO . unsafeCastTo Time64Array

-- | A convenience alias for `Nothing` :: `Maybe` `Time64Array`.
noTime64Array :: Maybe Time64Array
noTime64Array = Nothing

#if ENABLE_OVERLOADING
type family ResolveTime64ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveTime64ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTime64ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTime64ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveTime64ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveTime64ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveTime64ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveTime64ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveTime64ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTime64ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTime64ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTime64ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTime64ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveTime64ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveTime64ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTime64ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTime64ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTime64ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTime64ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTime64ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveTime64ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTime64ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTime64ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTime64ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveTime64ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveTime64ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTime64ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTime64ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveTime64ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTime64ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveTime64ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveTime64ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveTime64ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveTime64ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTime64ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTime64ArrayMethod "getValue" o = Time64ArrayGetValueMethodInfo
    ResolveTime64ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveTime64ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveTime64ArrayMethod "getValues" o = Time64ArrayGetValuesMethodInfo
    ResolveTime64ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTime64ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTime64ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTime64ArrayMethod t Time64Array, O.MethodInfo info Time64Array p) => O.IsLabelProxy t (Time64Array -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTime64ArrayMethod t Time64Array, O.MethodInfo info Time64Array p) => O.IsLabel t (Time64Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Time64Array
type instance O.AttributeList Time64Array = Time64ArrayAttributeList
type Time64ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Time64Array = Time64ArraySignalList
type Time64ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Time64Array::new
-- method type : Constructor
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "Time64DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The #GArrowTime64DataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Time64Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_time64_array_new" garrow_time64_array_new :: 
    Ptr Arrow.Time64DataType.Time64DataType -> -- data_type : TInterface (Name {namespace = "Arrow", name = "Time64DataType"})
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr Time64Array)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time64ArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Time64DataType.IsTime64DataType a, Arrow.Buffer.IsBuffer b, Arrow.Buffer.IsBuffer c) =>
    a
    {- ^ /@dataType@/: The 'GI.Arrow.Objects.Time64DataType.Time64DataType'. -}
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
    -> m Time64Array
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Time64Array.Time64Array'. -}
time64ArrayNew dataType length_ data_ nullBitmap nNulls = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_time64_array_new dataType' length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "time64ArrayNew" result
    result' <- (wrapObject Time64Array) result
    touchManagedPtr dataType
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Time64Array::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Time64Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime64Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_time64_array_get_value" garrow_time64_array_get_value :: 
    Ptr Time64Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "Time64Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Int64

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time64ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime64Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Time64Array.Time64Array'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Int64
    {- ^ __Returns:__ The i-th value. -}
time64ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_time64_array_get_value array' i
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data Time64ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Int64), MonadIO m, IsTime64Array a) => O.MethodInfo Time64ArrayGetValueMethodInfo a signature where
    overloadedMethod _ = time64ArrayGetValue

#endif

-- method Time64Array::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Time64Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime64Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TInt64))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_time64_array_get_values" garrow_time64_array_get_values :: 
    Ptr Time64Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "Time64Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Int64)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time64ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime64Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Time64Array.Time64Array'. -}
    -> m [Int64]
    {- ^ __Returns:__ The raw values. -}
time64ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_time64_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "time64ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data Time64ArrayGetValuesMethodInfo
instance (signature ~ (m [Int64]), MonadIO m, IsTime64Array a) => O.MethodInfo Time64ArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = time64ArrayGetValues

#endif


