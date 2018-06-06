

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Int64Array
    ( 

-- * Exported types
    Int64Array(..)                          ,
    IsInt64Array                            ,
    toInt64Array                            ,
    noInt64Array                            ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    Int64ArrayGetValueMethodInfo            ,
#endif
    int64ArrayGetValue                      ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    Int64ArrayGetValuesMethodInfo           ,
#endif
    int64ArrayGetValues                     ,


-- ** new #method:new#

    int64ArrayNew                           ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Int64Array = Int64Array (ManagedPtr Int64Array)
foreign import ccall "garrow_int64_array_get_type"
    c_garrow_int64_array_get_type :: IO GType

instance GObject Int64Array where
    gobjectType _ = c_garrow_int64_array_get_type
    

-- | Type class for types which can be safely cast to `Int64Array`, for instance with `toInt64Array`.
class GObject o => IsInt64Array o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Int64Array a) =>
    IsInt64Array a
#endif
instance IsInt64Array Int64Array
instance Arrow.NumericArray.IsNumericArray Int64Array
instance Arrow.PrimitiveArray.IsPrimitiveArray Int64Array
instance Arrow.Array.IsArray Int64Array
instance GObject.Object.IsObject Int64Array

-- | Cast to `Int64Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt64Array :: (MonadIO m, IsInt64Array o) => o -> m Int64Array
toInt64Array = liftIO . unsafeCastTo Int64Array

-- | A convenience alias for `Nothing` :: `Maybe` `Int64Array`.
noInt64Array :: Maybe Int64Array
noInt64Array = Nothing

#if ENABLE_OVERLOADING
type family ResolveInt64ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt64ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt64ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt64ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveInt64ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveInt64ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveInt64ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveInt64ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveInt64ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt64ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt64ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt64ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt64ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveInt64ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveInt64ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt64ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt64ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt64ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt64ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt64ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveInt64ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt64ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt64ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt64ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveInt64ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveInt64ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt64ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt64ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveInt64ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt64ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveInt64ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveInt64ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveInt64ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveInt64ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt64ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt64ArrayMethod "getValue" o = Int64ArrayGetValueMethodInfo
    ResolveInt64ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveInt64ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveInt64ArrayMethod "getValues" o = Int64ArrayGetValuesMethodInfo
    ResolveInt64ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt64ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt64ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt64ArrayMethod t Int64Array, O.MethodInfo info Int64Array p) => O.IsLabelProxy t (Int64Array -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveInt64ArrayMethod t Int64Array, O.MethodInfo info Int64Array p) => O.IsLabel t (Int64Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Int64Array
type instance O.AttributeList Int64Array = Int64ArrayAttributeList
type Int64ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Int64Array = Int64ArraySignalList
type Int64ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int64Array::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Int64Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int64_array_new" garrow_int64_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr Int64Array)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
int64ArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Buffer.IsBuffer a, Arrow.Buffer.IsBuffer b) =>
    Int64
    {- ^ /@length@/: The number of elements. -}
    -> a
    {- ^ /@data@/: The binary data in Arrow format of the array. -}
    -> Maybe (b)
    {- ^ /@nullBitmap@/: The bitmap that shows null elements. The
  N-th element is null when the N-th bit is 0, not null otherwise.
  If the array has no null elements, the bitmap must be 'Nothing' and
  /@nNulls@/ is 0. -}
    -> Int64
    {- ^ /@nNulls@/: The number of null elements. If -1 is specified, the
  number of nulls are computed from /@nullBitmap@/. -}
    -> m Int64Array
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Int64Array.Int64Array'. -}
int64ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_int64_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "int64ArrayNew" result
    result' <- (wrapObject Int64Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Int64Array::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Int64Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt64Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int64_array_get_value" garrow_int64_array_get_value :: 
    Ptr Int64Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int64Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Int64

{- |
/No description available in the introspection data./
-}
int64ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt64Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Int64Array.Int64Array'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Int64
    {- ^ __Returns:__ The i-th value. -}
int64ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_int64_array_get_value array' i
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data Int64ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Int64), MonadIO m, IsInt64Array a) => O.MethodInfo Int64ArrayGetValueMethodInfo a signature where
    overloadedMethod _ = int64ArrayGetValue

#endif

-- method Int64Array::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Int64Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt64Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TInt64))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int64_array_get_values" garrow_int64_array_get_values :: 
    Ptr Int64Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int64Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Int64)

{- |
/No description available in the introspection data./
-}
int64ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt64Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Int64Array.Int64Array'. -}
    -> m [Int64]
    {- ^ __Returns:__ The raw values. -}
int64ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_int64_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "int64ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data Int64ArrayGetValuesMethodInfo
instance (signature ~ (m [Int64]), MonadIO m, IsInt64Array a) => O.MethodInfo Int64ArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = int64ArrayGetValues

#endif


