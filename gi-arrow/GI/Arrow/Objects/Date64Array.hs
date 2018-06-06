

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Date64Array
    ( 

-- * Exported types
    Date64Array(..)                         ,
    IsDate64Array                           ,
    toDate64Array                           ,
    noDate64Array                           ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    Date64ArrayGetValueMethodInfo           ,
#endif
    date64ArrayGetValue                     ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    Date64ArrayGetValuesMethodInfo          ,
#endif
    date64ArrayGetValues                    ,


-- ** new #method:new#

    date64ArrayNew                          ,




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
newtype Date64Array = Date64Array (ManagedPtr Date64Array)
foreign import ccall "garrow_date64_array_get_type"
    c_garrow_date64_array_get_type :: IO GType

instance GObject Date64Array where
    gobjectType _ = c_garrow_date64_array_get_type
    

-- | Type class for types which can be safely cast to `Date64Array`, for instance with `toDate64Array`.
class GObject o => IsDate64Array o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Date64Array a) =>
    IsDate64Array a
#endif
instance IsDate64Array Date64Array
instance Arrow.NumericArray.IsNumericArray Date64Array
instance Arrow.PrimitiveArray.IsPrimitiveArray Date64Array
instance Arrow.Array.IsArray Date64Array
instance GObject.Object.IsObject Date64Array

-- | Cast to `Date64Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDate64Array :: (MonadIO m, IsDate64Array o) => o -> m Date64Array
toDate64Array = liftIO . unsafeCastTo Date64Array

-- | A convenience alias for `Nothing` :: `Maybe` `Date64Array`.
noDate64Array :: Maybe Date64Array
noDate64Array = Nothing

#if ENABLE_OVERLOADING
type family ResolveDate64ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveDate64ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDate64ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDate64ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveDate64ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveDate64ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveDate64ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveDate64ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveDate64ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDate64ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDate64ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDate64ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDate64ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveDate64ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveDate64ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDate64ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDate64ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDate64ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDate64ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDate64ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveDate64ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDate64ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDate64ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDate64ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveDate64ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveDate64ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDate64ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDate64ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveDate64ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDate64ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveDate64ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveDate64ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveDate64ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveDate64ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDate64ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDate64ArrayMethod "getValue" o = Date64ArrayGetValueMethodInfo
    ResolveDate64ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveDate64ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveDate64ArrayMethod "getValues" o = Date64ArrayGetValuesMethodInfo
    ResolveDate64ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDate64ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDate64ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDate64ArrayMethod t Date64Array, O.MethodInfo info Date64Array p) => O.IsLabelProxy t (Date64Array -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveDate64ArrayMethod t Date64Array, O.MethodInfo info Date64Array p) => O.IsLabel t (Date64Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Date64Array
type instance O.AttributeList Date64Array = Date64ArrayAttributeList
type Date64ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Date64Array = Date64ArraySignalList
type Date64ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Date64Array::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Date64Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_date64_array_new" garrow_date64_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr Date64Array)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
date64ArrayNew ::
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
    -> m Date64Array
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Date64Array.Date64Array'. -}
date64ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_date64_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "date64ArrayNew" result
    result' <- (wrapObject Date64Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Date64Array::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Date64Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDate64Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_date64_array_get_value" garrow_date64_array_get_value :: 
    Ptr Date64Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "Date64Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Int64

{- |
/No description available in the introspection data./

@since 0.7.0
-}
date64ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsDate64Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Date64Array.Date64Array'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Int64
    {- ^ __Returns:__ The i-th value. -}
date64ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_date64_array_get_value array' i
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data Date64ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Int64), MonadIO m, IsDate64Array a) => O.MethodInfo Date64ArrayGetValueMethodInfo a signature where
    overloadedMethod _ = date64ArrayGetValue

#endif

-- method Date64Array::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Date64Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDate64Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TInt64))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_date64_array_get_values" garrow_date64_array_get_values :: 
    Ptr Date64Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "Date64Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Int64)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
date64ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsDate64Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.Date64Array.Date64Array'. -}
    -> m [Int64]
    {- ^ __Returns:__ The raw values. -}
date64ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_date64_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "date64ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data Date64ArrayGetValuesMethodInfo
instance (signature ~ (m [Int64]), MonadIO m, IsDate64Array a) => O.MethodInfo Date64ArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = date64ArrayGetValues

#endif


