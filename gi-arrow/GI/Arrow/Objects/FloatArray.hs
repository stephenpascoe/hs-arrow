

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.FloatArray
    ( 

-- * Exported types
    FloatArray(..)                          ,
    IsFloatArray                            ,
    toFloatArray                            ,
    noFloatArray                            ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    FloatArrayGetValueMethodInfo            ,
#endif
    floatArrayGetValue                      ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    FloatArrayGetValuesMethodInfo           ,
#endif
    floatArrayGetValues                     ,


-- ** new #method:new#

    floatArrayNew                           ,




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
newtype FloatArray = FloatArray (ManagedPtr FloatArray)
foreign import ccall "garrow_float_array_get_type"
    c_garrow_float_array_get_type :: IO GType

instance GObject FloatArray where
    gobjectType _ = c_garrow_float_array_get_type
    

-- | Type class for types which can be safely cast to `FloatArray`, for instance with `toFloatArray`.
class GObject o => IsFloatArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError FloatArray a) =>
    IsFloatArray a
#endif
instance IsFloatArray FloatArray
instance Arrow.NumericArray.IsNumericArray FloatArray
instance Arrow.PrimitiveArray.IsPrimitiveArray FloatArray
instance Arrow.Array.IsArray FloatArray
instance GObject.Object.IsObject FloatArray

-- | Cast to `FloatArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFloatArray :: (MonadIO m, IsFloatArray o) => o -> m FloatArray
toFloatArray = liftIO . unsafeCastTo FloatArray

-- | A convenience alias for `Nothing` :: `Maybe` `FloatArray`.
noFloatArray :: Maybe FloatArray
noFloatArray = Nothing

#if ENABLE_OVERLOADING
type family ResolveFloatArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveFloatArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFloatArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFloatArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveFloatArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveFloatArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveFloatArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveFloatArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveFloatArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFloatArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFloatArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFloatArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFloatArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveFloatArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveFloatArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFloatArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFloatArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFloatArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFloatArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFloatArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveFloatArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFloatArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFloatArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFloatArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveFloatArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveFloatArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFloatArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFloatArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveFloatArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFloatArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveFloatArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveFloatArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveFloatArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveFloatArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFloatArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFloatArrayMethod "getValue" o = FloatArrayGetValueMethodInfo
    ResolveFloatArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveFloatArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveFloatArrayMethod "getValues" o = FloatArrayGetValuesMethodInfo
    ResolveFloatArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFloatArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFloatArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFloatArrayMethod t FloatArray, O.MethodInfo info FloatArray p) => O.IsLabelProxy t (FloatArray -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveFloatArrayMethod t FloatArray, O.MethodInfo info FloatArray p) => O.IsLabel t (FloatArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList FloatArray
type instance O.AttributeList FloatArray = FloatArrayAttributeList
type FloatArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList FloatArray = FloatArraySignalList
type FloatArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FloatArray::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "FloatArray"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_float_array_new" garrow_float_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr FloatArray)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
floatArrayNew ::
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
    -> m FloatArray
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.FloatArray.FloatArray'. -}
floatArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_float_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "floatArrayNew" result
    result' <- (wrapObject FloatArray) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method FloatArray::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "FloatArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFloatArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TFloat)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_float_array_get_value" garrow_float_array_get_value :: 
    Ptr FloatArray ->                       -- array : TInterface (Name {namespace = "Arrow", name = "FloatArray"})
    Int64 ->                                -- i : TBasicType TInt64
    IO CFloat

{- |
/No description available in the introspection data./
-}
floatArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsFloatArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.FloatArray.FloatArray'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Float
    {- ^ __Returns:__ The i-th value. -}
floatArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_float_array_get_value array' i
    let result' = realToFrac result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data FloatArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Float), MonadIO m, IsFloatArray a) => O.MethodInfo FloatArrayGetValueMethodInfo a signature where
    overloadedMethod _ = floatArrayGetValue

#endif

-- method FloatArray::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "FloatArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFloatArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TFloat))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_float_array_get_values" garrow_float_array_get_values :: 
    Ptr FloatArray ->                       -- array : TInterface (Name {namespace = "Arrow", name = "FloatArray"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr CFloat)

{- |
/No description available in the introspection data./
-}
floatArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsFloatArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.FloatArray.FloatArray'. -}
    -> m [Float]
    {- ^ __Returns:__ The raw values. -}
floatArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_float_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "floatArrayGetValues" result
    result' <- (unpackMapStorableArrayWithLength realToFrac length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data FloatArrayGetValuesMethodInfo
instance (signature ~ (m [Float]), MonadIO m, IsFloatArray a) => O.MethodInfo FloatArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = floatArrayGetValues

#endif


