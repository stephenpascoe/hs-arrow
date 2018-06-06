

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.DoubleArray
    ( 

-- * Exported types
    DoubleArray(..)                         ,
    IsDoubleArray                           ,
    toDoubleArray                           ,
    noDoubleArray                           ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    DoubleArrayGetValueMethodInfo           ,
#endif
    doubleArrayGetValue                     ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    DoubleArrayGetValuesMethodInfo          ,
#endif
    doubleArrayGetValues                    ,


-- ** new #method:new#

    doubleArrayNew                          ,




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
newtype DoubleArray = DoubleArray (ManagedPtr DoubleArray)
foreign import ccall "garrow_double_array_get_type"
    c_garrow_double_array_get_type :: IO GType

instance GObject DoubleArray where
    gobjectType _ = c_garrow_double_array_get_type
    

-- | Type class for types which can be safely cast to `DoubleArray`, for instance with `toDoubleArray`.
class GObject o => IsDoubleArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError DoubleArray a) =>
    IsDoubleArray a
#endif
instance IsDoubleArray DoubleArray
instance Arrow.NumericArray.IsNumericArray DoubleArray
instance Arrow.PrimitiveArray.IsPrimitiveArray DoubleArray
instance Arrow.Array.IsArray DoubleArray
instance GObject.Object.IsObject DoubleArray

-- | Cast to `DoubleArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDoubleArray :: (MonadIO m, IsDoubleArray o) => o -> m DoubleArray
toDoubleArray = liftIO . unsafeCastTo DoubleArray

-- | A convenience alias for `Nothing` :: `Maybe` `DoubleArray`.
noDoubleArray :: Maybe DoubleArray
noDoubleArray = Nothing

#if ENABLE_OVERLOADING
type family ResolveDoubleArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveDoubleArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDoubleArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDoubleArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveDoubleArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveDoubleArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveDoubleArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveDoubleArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveDoubleArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDoubleArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDoubleArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDoubleArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDoubleArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveDoubleArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveDoubleArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDoubleArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDoubleArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDoubleArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDoubleArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDoubleArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveDoubleArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDoubleArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDoubleArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDoubleArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveDoubleArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveDoubleArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDoubleArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDoubleArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveDoubleArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDoubleArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveDoubleArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveDoubleArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveDoubleArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveDoubleArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDoubleArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDoubleArrayMethod "getValue" o = DoubleArrayGetValueMethodInfo
    ResolveDoubleArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveDoubleArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveDoubleArrayMethod "getValues" o = DoubleArrayGetValuesMethodInfo
    ResolveDoubleArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDoubleArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDoubleArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDoubleArrayMethod t DoubleArray, O.MethodInfo info DoubleArray p) => O.IsLabelProxy t (DoubleArray -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveDoubleArrayMethod t DoubleArray, O.MethodInfo info DoubleArray p) => O.IsLabel t (DoubleArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList DoubleArray
type instance O.AttributeList DoubleArray = DoubleArrayAttributeList
type DoubleArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList DoubleArray = DoubleArraySignalList
type DoubleArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DoubleArray::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DoubleArray"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_double_array_new" garrow_double_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr DoubleArray)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
doubleArrayNew ::
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
    -> m DoubleArray
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.DoubleArray.DoubleArray'. -}
doubleArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_double_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "doubleArrayNew" result
    result' <- (wrapObject DoubleArray) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method DoubleArray::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "DoubleArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDoubleArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TDouble)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_double_array_get_value" garrow_double_array_get_value :: 
    Ptr DoubleArray ->                      -- array : TInterface (Name {namespace = "Arrow", name = "DoubleArray"})
    Int64 ->                                -- i : TBasicType TInt64
    IO CDouble

{- |
/No description available in the introspection data./
-}
doubleArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsDoubleArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.DoubleArray.DoubleArray'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Double
    {- ^ __Returns:__ The i-th value. -}
doubleArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_double_array_get_value array' i
    let result' = realToFrac result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data DoubleArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Double), MonadIO m, IsDoubleArray a) => O.MethodInfo DoubleArrayGetValueMethodInfo a signature where
    overloadedMethod _ = doubleArrayGetValue

#endif

-- method DoubleArray::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "DoubleArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDoubleArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TDouble))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_double_array_get_values" garrow_double_array_get_values :: 
    Ptr DoubleArray ->                      -- array : TInterface (Name {namespace = "Arrow", name = "DoubleArray"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr CDouble)

{- |
/No description available in the introspection data./
-}
doubleArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsDoubleArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.DoubleArray.DoubleArray'. -}
    -> m [Double]
    {- ^ __Returns:__ The raw values. -}
doubleArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_double_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "doubleArrayGetValues" result
    result' <- (unpackMapStorableArrayWithLength realToFrac length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data DoubleArrayGetValuesMethodInfo
instance (signature ~ (m [Double]), MonadIO m, IsDoubleArray a) => O.MethodInfo DoubleArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = doubleArrayGetValues

#endif


