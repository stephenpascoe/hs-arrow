

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::BooleanArray@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.BooleanArray
    ( 

-- * Exported types
    BooleanArray(..)                        ,
    IsBooleanArray                          ,
    toBooleanArray                          ,
    noBooleanArray                          ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    BooleanArrayGetValueMethodInfo          ,
#endif
    booleanArrayGetValue                    ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    BooleanArrayGetValuesMethodInfo         ,
#endif
    booleanArrayGetValues                   ,


-- ** new #method:new#

    booleanArrayNew                         ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.PrimitiveArray as Arrow.PrimitiveArray
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype BooleanArray = BooleanArray (ManagedPtr BooleanArray)
foreign import ccall "garrow_boolean_array_get_type"
    c_garrow_boolean_array_get_type :: IO GType

instance GObject BooleanArray where
    gobjectType _ = c_garrow_boolean_array_get_type
    

-- | Type class for types which can be safely cast to `BooleanArray`, for instance with `toBooleanArray`.
class GObject o => IsBooleanArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError BooleanArray a) =>
    IsBooleanArray a
#endif
instance IsBooleanArray BooleanArray
instance Arrow.PrimitiveArray.IsPrimitiveArray BooleanArray
instance Arrow.Array.IsArray BooleanArray
instance GObject.Object.IsObject BooleanArray

-- | Cast to `BooleanArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBooleanArray :: (MonadIO m, IsBooleanArray o) => o -> m BooleanArray
toBooleanArray = liftIO . unsafeCastTo BooleanArray

-- | A convenience alias for `Nothing` :: `Maybe` `BooleanArray`.
noBooleanArray :: Maybe BooleanArray
noBooleanArray = Nothing

#if ENABLE_OVERLOADING
type family ResolveBooleanArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveBooleanArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBooleanArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBooleanArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveBooleanArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveBooleanArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveBooleanArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveBooleanArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveBooleanArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBooleanArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBooleanArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBooleanArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBooleanArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveBooleanArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveBooleanArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBooleanArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBooleanArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBooleanArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBooleanArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBooleanArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveBooleanArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBooleanArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBooleanArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBooleanArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveBooleanArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveBooleanArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBooleanArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBooleanArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveBooleanArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBooleanArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveBooleanArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveBooleanArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveBooleanArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveBooleanArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBooleanArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBooleanArrayMethod "getValue" o = BooleanArrayGetValueMethodInfo
    ResolveBooleanArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveBooleanArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveBooleanArrayMethod "getValues" o = BooleanArrayGetValuesMethodInfo
    ResolveBooleanArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBooleanArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBooleanArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBooleanArrayMethod t BooleanArray, O.MethodInfo info BooleanArray p) => O.IsLabelProxy t (BooleanArray -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveBooleanArrayMethod t BooleanArray, O.MethodInfo info BooleanArray p) => O.IsLabel t (BooleanArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList BooleanArray
type instance O.AttributeList BooleanArray = BooleanArrayAttributeList
type BooleanArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList BooleanArray = BooleanArraySignalList
type BooleanArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method BooleanArray::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "BooleanArray"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_boolean_array_new" garrow_boolean_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr BooleanArray)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
booleanArrayNew ::
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
    -> m BooleanArray
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.BooleanArray.BooleanArray'. -}
booleanArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_boolean_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "booleanArrayNew" result
    result' <- (wrapObject BooleanArray) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method BooleanArray::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "BooleanArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBooleanArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_boolean_array_get_value" garrow_boolean_array_get_value :: 
    Ptr BooleanArray ->                     -- array : TInterface (Name {namespace = "Arrow", name = "BooleanArray"})
    Int64 ->                                -- i : TBasicType TInt64
    IO CInt

{- |
/No description available in the introspection data./
-}
booleanArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsBooleanArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.BooleanArray.BooleanArray'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Bool
    {- ^ __Returns:__ The i-th value. -}
booleanArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_boolean_array_get_value array' i
    let result' = (/= 0) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data BooleanArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Bool), MonadIO m, IsBooleanArray a) => O.MethodInfo BooleanArrayGetValueMethodInfo a signature where
    overloadedMethod _ = booleanArrayGetValue

#endif

-- method BooleanArray::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "BooleanArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBooleanArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TBoolean))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_boolean_array_get_values" garrow_boolean_array_get_values :: 
    Ptr BooleanArray ->                     -- array : TInterface (Name {namespace = "Arrow", name = "BooleanArray"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr CInt)

{- |
/No description available in the introspection data./
-}
booleanArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsBooleanArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.BooleanArray.BooleanArray'. -}
    -> m [Bool]
    {- ^ __Returns:__ The raw boolean values.

  It should be freed with 'GI.GLib.Functions.free' when no longer needed. -}
booleanArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_boolean_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "booleanArrayGetValues" result
    result' <- (unpackMapStorableArrayWithLength (/= 0) length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data BooleanArrayGetValuesMethodInfo
instance (signature ~ (m [Bool]), MonadIO m, IsBooleanArray a) => O.MethodInfo BooleanArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = booleanArrayGetValues

#endif


