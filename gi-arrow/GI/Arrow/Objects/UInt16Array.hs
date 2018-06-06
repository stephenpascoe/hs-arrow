

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.UInt16Array
    ( 

-- * Exported types
    UInt16Array(..)                         ,
    IsUInt16Array                           ,
    toUInt16Array                           ,
    noUInt16Array                           ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    UInt16ArrayGetValueMethodInfo           ,
#endif
    uInt16ArrayGetValue                     ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    UInt16ArrayGetValuesMethodInfo          ,
#endif
    uInt16ArrayGetValues                    ,


-- ** new #method:new#

    uInt16ArrayNew                          ,




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
newtype UInt16Array = UInt16Array (ManagedPtr UInt16Array)
foreign import ccall "garrow_uint16_array_get_type"
    c_garrow_uint16_array_get_type :: IO GType

instance GObject UInt16Array where
    gobjectType _ = c_garrow_uint16_array_get_type
    

-- | Type class for types which can be safely cast to `UInt16Array`, for instance with `toUInt16Array`.
class GObject o => IsUInt16Array o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError UInt16Array a) =>
    IsUInt16Array a
#endif
instance IsUInt16Array UInt16Array
instance Arrow.NumericArray.IsNumericArray UInt16Array
instance Arrow.PrimitiveArray.IsPrimitiveArray UInt16Array
instance Arrow.Array.IsArray UInt16Array
instance GObject.Object.IsObject UInt16Array

-- | Cast to `UInt16Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt16Array :: (MonadIO m, IsUInt16Array o) => o -> m UInt16Array
toUInt16Array = liftIO . unsafeCastTo UInt16Array

-- | A convenience alias for `Nothing` :: `Maybe` `UInt16Array`.
noUInt16Array :: Maybe UInt16Array
noUInt16Array = Nothing

#if ENABLE_OVERLOADING
type family ResolveUInt16ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt16ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt16ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt16ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveUInt16ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveUInt16ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveUInt16ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveUInt16ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveUInt16ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt16ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt16ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt16ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt16ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveUInt16ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveUInt16ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt16ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt16ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt16ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt16ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt16ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveUInt16ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt16ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt16ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt16ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveUInt16ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveUInt16ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt16ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt16ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveUInt16ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt16ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveUInt16ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveUInt16ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveUInt16ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveUInt16ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt16ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt16ArrayMethod "getValue" o = UInt16ArrayGetValueMethodInfo
    ResolveUInt16ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveUInt16ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveUInt16ArrayMethod "getValues" o = UInt16ArrayGetValuesMethodInfo
    ResolveUInt16ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt16ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt16ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt16ArrayMethod t UInt16Array, O.MethodInfo info UInt16Array p) => O.IsLabelProxy t (UInt16Array -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveUInt16ArrayMethod t UInt16Array, O.MethodInfo info UInt16Array p) => O.IsLabel t (UInt16Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList UInt16Array
type instance O.AttributeList UInt16Array = UInt16ArrayAttributeList
type UInt16ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList UInt16Array = UInt16ArraySignalList
type UInt16ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt16Array::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "UInt16Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint16_array_new" garrow_uint16_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr UInt16Array)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
uInt16ArrayNew ::
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
    -> m UInt16Array
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.UInt16Array.UInt16Array'. -}
uInt16ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_uint16_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "uInt16ArrayNew" result
    result' <- (wrapObject UInt16Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method UInt16Array::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "UInt16Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt16Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUInt16)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint16_array_get_value" garrow_uint16_array_get_value :: 
    Ptr UInt16Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt16Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Word16

{- |
/No description available in the introspection data./
-}
uInt16ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.UInt16Array.UInt16Array'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Word16
    {- ^ __Returns:__ The i-th value. -}
uInt16ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_uint16_array_get_value array' i
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data UInt16ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Word16), MonadIO m, IsUInt16Array a) => O.MethodInfo UInt16ArrayGetValueMethodInfo a signature where
    overloadedMethod _ = uInt16ArrayGetValue

#endif

-- method UInt16Array::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "UInt16Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt16Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TUInt16))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint16_array_get_values" garrow_uint16_array_get_values :: 
    Ptr UInt16Array ->                      -- array : TInterface (Name {namespace = "Arrow", name = "UInt16Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Word16)

{- |
/No description available in the introspection data./
-}
uInt16ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt16Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.UInt16Array.UInt16Array'. -}
    -> m [Word16]
    {- ^ __Returns:__ The raw values. -}
uInt16ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_uint16_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "uInt16ArrayGetValues" result
    result' <- (unpackStorableArrayWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data UInt16ArrayGetValuesMethodInfo
instance (signature ~ (m [Word16]), MonadIO m, IsUInt16Array a) => O.MethodInfo UInt16ArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = uInt16ArrayGetValues

#endif


