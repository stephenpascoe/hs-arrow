

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Time32Array
    ( 

-- * Exported types
    Time32Array(..)                         ,
    IsTime32Array                           ,
    toTime32Array                           ,
    noTime32Array                           ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    Time32ArrayGetValueMethodInfo           ,
#endif
    time32ArrayGetValue                     ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    Time32ArrayGetValuesMethodInfo          ,
#endif
    time32ArrayGetValues                    ,


-- ** new #method:new#

    time32ArrayNew                          ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Time32DataType as Arrow.Time32DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Time32Array = Time32Array (ManagedPtr Time32Array)
foreign import ccall "garrow_time32_array_get_type"
    c_garrow_time32_array_get_type :: IO GType

instance GObject Time32Array where
    gobjectType _ = c_garrow_time32_array_get_type
    

-- | Type class for types which can be safely cast to `Time32Array`, for instance with `toTime32Array`.
class GObject o => IsTime32Array o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Time32Array a) =>
    IsTime32Array a
#endif
instance IsTime32Array Time32Array
instance Arrow.NumericArray.IsNumericArray Time32Array
instance Arrow.PrimitiveArray.IsPrimitiveArray Time32Array
instance Arrow.Array.IsArray Time32Array
instance GObject.Object.IsObject Time32Array

-- | Cast to `Time32Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTime32Array :: (MonadIO m, IsTime32Array o) => o -> m Time32Array
toTime32Array = liftIO . unsafeCastTo Time32Array

-- | A convenience alias for `Nothing` :: `Maybe` `Time32Array`.
noTime32Array :: Maybe Time32Array
noTime32Array = Nothing

#if ENABLE_OVERLOADING
type family ResolveTime32ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveTime32ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTime32ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTime32ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveTime32ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveTime32ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveTime32ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveTime32ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveTime32ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTime32ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTime32ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTime32ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTime32ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveTime32ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveTime32ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTime32ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTime32ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTime32ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTime32ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTime32ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveTime32ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTime32ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTime32ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTime32ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveTime32ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveTime32ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTime32ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTime32ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveTime32ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTime32ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveTime32ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveTime32ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveTime32ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveTime32ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTime32ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTime32ArrayMethod "getValue" o = Time32ArrayGetValueMethodInfo
    ResolveTime32ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveTime32ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveTime32ArrayMethod "getValues" o = Time32ArrayGetValuesMethodInfo
    ResolveTime32ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTime32ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTime32ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTime32ArrayMethod t Time32Array, O.MethodInfo info Time32Array p) => O.IsLabelProxy t (Time32Array -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTime32ArrayMethod t Time32Array, O.MethodInfo info Time32Array p) => O.IsLabel t (Time32Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Time32Array
type instance O.AttributeList Time32Array = Time32ArrayAttributeList
type Time32ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Time32Array = Time32ArraySignalList
type Time32ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Time32Array::new
-- method type : Constructor
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "Time32DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The #GArrowTime32DataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Time32Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_time32_array_new" garrow_time32_array_new :: 
    Ptr Arrow.Time32DataType.Time32DataType -> -- data_type : TInterface (Name {namespace = "Arrow", name = "Time32DataType"})
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr Time32Array)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time32ArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Time32DataType.IsTime32DataType a, Arrow.Buffer.IsBuffer b, Arrow.Buffer.IsBuffer c) =>
    a
    {- ^ /@dataType@/: The 'GI.Arrow.Objects.Time32DataType.Time32DataType'. -}
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
    -> m Time32Array
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Time32Array.Time32Array'. -}
time32ArrayNew dataType length_ data_ nullBitmap nNulls = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_time32_array_new dataType' length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "time32ArrayNew" result
    result' <- (wrapObject Time32Array) result
    touchManagedPtr dataType
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Time32Array::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Time32Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime32Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt32)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_time32_array_get_value" garrow_time32_array_get_value :: 
    Ptr Time32Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "Time32Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Int32

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time32ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime32Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Time32Array.Time32Array'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Int32
    {- ^ __Returns:__ The i-th value. -}
time32ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_time32_array_get_value array' i
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data Time32ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Int32), MonadIO m, IsTime32Array a) => O.MethodInfo Time32ArrayGetValueMethodInfo a signature where
    overloadedMethod _ = time32ArrayGetValue

#endif

-- method Time32Array::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Time32Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime32Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TInt32))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_time32_array_get_values" garrow_time32_array_get_values :: 
    Ptr Time32Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "Time32Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Int32)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time32ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime32Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Time32Array.Time32Array'. -}
    -> m [Int32]
    {- ^ __Returns:__ The raw values. -}
time32ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_time32_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "time32ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data Time32ArrayGetValuesMethodInfo
instance (signature ~ (m [Int32]), MonadIO m, IsTime32Array a) => O.MethodInfo Time32ArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = time32ArrayGetValues

#endif


