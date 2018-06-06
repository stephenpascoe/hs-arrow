

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Int32Array
    ( 

-- * Exported types
    Int32Array(..)                          ,
    IsInt32Array                            ,
    toInt32Array                            ,
    noInt32Array                            ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    Int32ArrayGetValueMethodInfo            ,
#endif
    int32ArrayGetValue                      ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    Int32ArrayGetValuesMethodInfo           ,
#endif
    int32ArrayGetValues                     ,


-- ** new #method:new#

    int32ArrayNew                           ,




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
newtype Int32Array = Int32Array (ManagedPtr Int32Array)
foreign import ccall "garrow_int32_array_get_type"
    c_garrow_int32_array_get_type :: IO GType

instance GObject Int32Array where
    gobjectType _ = c_garrow_int32_array_get_type
    

-- | Type class for types which can be safely cast to `Int32Array`, for instance with `toInt32Array`.
class GObject o => IsInt32Array o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Int32Array a) =>
    IsInt32Array a
#endif
instance IsInt32Array Int32Array
instance Arrow.NumericArray.IsNumericArray Int32Array
instance Arrow.PrimitiveArray.IsPrimitiveArray Int32Array
instance Arrow.Array.IsArray Int32Array
instance GObject.Object.IsObject Int32Array

-- | Cast to `Int32Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt32Array :: (MonadIO m, IsInt32Array o) => o -> m Int32Array
toInt32Array = liftIO . unsafeCastTo Int32Array

-- | A convenience alias for `Nothing` :: `Maybe` `Int32Array`.
noInt32Array :: Maybe Int32Array
noInt32Array = Nothing

#if ENABLE_OVERLOADING
type family ResolveInt32ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt32ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt32ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt32ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveInt32ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveInt32ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveInt32ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveInt32ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveInt32ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt32ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt32ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt32ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt32ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveInt32ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveInt32ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt32ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt32ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt32ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt32ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt32ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveInt32ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt32ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt32ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt32ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveInt32ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveInt32ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt32ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt32ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveInt32ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt32ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveInt32ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveInt32ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveInt32ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveInt32ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt32ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt32ArrayMethod "getValue" o = Int32ArrayGetValueMethodInfo
    ResolveInt32ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveInt32ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveInt32ArrayMethod "getValues" o = Int32ArrayGetValuesMethodInfo
    ResolveInt32ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt32ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt32ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt32ArrayMethod t Int32Array, O.MethodInfo info Int32Array p) => O.IsLabelProxy t (Int32Array -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveInt32ArrayMethod t Int32Array, O.MethodInfo info Int32Array p) => O.IsLabel t (Int32Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Int32Array
type instance O.AttributeList Int32Array = Int32ArrayAttributeList
type Int32ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Int32Array = Int32ArraySignalList
type Int32ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int32Array::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Int32Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int32_array_new" garrow_int32_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr Int32Array)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
int32ArrayNew ::
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
    -> m Int32Array
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Int32Array.Int32Array'. -}
int32ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_int32_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "int32ArrayNew" result
    result' <- (wrapObject Int32Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Int32Array::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Int32Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt32Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt32)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int32_array_get_value" garrow_int32_array_get_value :: 
    Ptr Int32Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int32Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Int32

{- |
/No description available in the introspection data./
-}
int32ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt32Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Int32Array.Int32Array'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Int32
    {- ^ __Returns:__ The i-th value. -}
int32ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_int32_array_get_value array' i
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data Int32ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Int32), MonadIO m, IsInt32Array a) => O.MethodInfo Int32ArrayGetValueMethodInfo a signature where
    overloadedMethod _ = int32ArrayGetValue

#endif

-- method Int32Array::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Int32Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt32Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TInt32))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int32_array_get_values" garrow_int32_array_get_values :: 
    Ptr Int32Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "Int32Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Int32)

{- |
/No description available in the introspection data./
-}
int32ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt32Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Int32Array.Int32Array'. -}
    -> m [Int32]
    {- ^ __Returns:__ The raw values. -}
int32ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_int32_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "int32ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data Int32ArrayGetValuesMethodInfo
instance (signature ~ (m [Int32]), MonadIO m, IsInt32Array a) => O.MethodInfo Int32ArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = int32ArrayGetValues

#endif


