

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.UInt8Array
    ( 

-- * Exported types
    UInt8Array(..)                          ,
    IsUInt8Array                            ,
    toUInt8Array                            ,
    noUInt8Array                            ,


 -- * Methods
-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    UInt8ArrayGetValueMethodInfo            ,
#endif
    uInt8ArrayGetValue                      ,


-- ** getValues #method:getValues#

#if ENABLE_OVERLOADING
    UInt8ArrayGetValuesMethodInfo           ,
#endif
    uInt8ArrayGetValues                     ,


-- ** new #method:new#

    uInt8ArrayNew                           ,




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
newtype UInt8Array = UInt8Array (ManagedPtr UInt8Array)
foreign import ccall "garrow_uint8_array_get_type"
    c_garrow_uint8_array_get_type :: IO GType

instance GObject UInt8Array where
    gobjectType _ = c_garrow_uint8_array_get_type
    

-- | Type class for types which can be safely cast to `UInt8Array`, for instance with `toUInt8Array`.
class GObject o => IsUInt8Array o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError UInt8Array a) =>
    IsUInt8Array a
#endif
instance IsUInt8Array UInt8Array
instance Arrow.NumericArray.IsNumericArray UInt8Array
instance Arrow.PrimitiveArray.IsPrimitiveArray UInt8Array
instance Arrow.Array.IsArray UInt8Array
instance GObject.Object.IsObject UInt8Array

-- | Cast to `UInt8Array`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt8Array :: (MonadIO m, IsUInt8Array o) => o -> m UInt8Array
toUInt8Array = liftIO . unsafeCastTo UInt8Array

-- | A convenience alias for `Nothing` :: `Maybe` `UInt8Array`.
noUInt8Array :: Maybe UInt8Array
noUInt8Array = Nothing

#if ENABLE_OVERLOADING
type family ResolveUInt8ArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt8ArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt8ArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt8ArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveUInt8ArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveUInt8ArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveUInt8ArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveUInt8ArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveUInt8ArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt8ArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt8ArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt8ArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt8ArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveUInt8ArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveUInt8ArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt8ArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt8ArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt8ArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt8ArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt8ArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveUInt8ArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt8ArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt8ArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt8ArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveUInt8ArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveUInt8ArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt8ArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt8ArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveUInt8ArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt8ArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveUInt8ArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveUInt8ArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveUInt8ArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveUInt8ArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt8ArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt8ArrayMethod "getValue" o = UInt8ArrayGetValueMethodInfo
    ResolveUInt8ArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveUInt8ArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveUInt8ArrayMethod "getValues" o = UInt8ArrayGetValuesMethodInfo
    ResolveUInt8ArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt8ArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt8ArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt8ArrayMethod t UInt8Array, O.MethodInfo info UInt8Array p) => O.IsLabelProxy t (UInt8Array -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveUInt8ArrayMethod t UInt8Array, O.MethodInfo info UInt8Array p) => O.IsLabel t (UInt8Array -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList UInt8Array
type instance O.AttributeList UInt8Array = UInt8ArrayAttributeList
type UInt8ArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList UInt8Array = UInt8ArraySignalList
type UInt8ArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt8Array::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "UInt8Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint8_array_new" garrow_uint8_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr UInt8Array)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
uInt8ArrayNew ::
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
    -> m UInt8Array
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.UInt8Array.UInt8Array'. -}
uInt8ArrayNew length_ data_ nullBitmap nNulls = liftIO $ do
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_uint8_array_new length_ data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "uInt8ArrayNew" result
    result' <- (wrapObject UInt8Array) result
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method UInt8Array::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "UInt8Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt8Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUInt8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint8_array_get_value" garrow_uint8_array_get_value :: 
    Ptr UInt8Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "UInt8Array"})
    Int64 ->                                -- i : TBasicType TInt64
    IO Word8

{- |
/No description available in the introspection data./
-}
uInt8ArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt8Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.UInt8Array.UInt8Array'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m Word8
    {- ^ __Returns:__ The i-th value. -}
uInt8ArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_uint8_array_get_value array' i
    touchManagedPtr array
    return result

#if ENABLE_OVERLOADING
data UInt8ArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m Word8), MonadIO m, IsUInt8Array a) => O.MethodInfo UInt8ArrayGetValueMethodInfo a signature where
    overloadedMethod _ = uInt8ArrayGetValue

#endif

-- method UInt8Array::get_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "UInt8Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt8Array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of values.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TUInt8))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint8_array_get_values" garrow_uint8_array_get_values :: 
    Ptr UInt8Array ->                       -- array : TInterface (Name {namespace = "Arrow", name = "UInt8Array"})
    Ptr Int64 ->                            -- length : TBasicType TInt64
    IO (Ptr Word8)

{- |
/No description available in the introspection data./
-}
uInt8ArrayGetValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt8Array a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.UInt8Array.UInt8Array'. -}
    -> m ByteString
    {- ^ __Returns:__ The raw values. -}
uInt8ArrayGetValues array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    length_ <- allocMem :: IO (Ptr Int64)
    result <- garrow_uint8_array_get_values array' length_
    length_' <- peek length_
    checkUnexpectedReturnNULL "uInt8ArrayGetValues" result
    result' <- (unpackByteStringWithLength length_') result
    touchManagedPtr array
    freeMem length_
    return result'

#if ENABLE_OVERLOADING
data UInt8ArrayGetValuesMethodInfo
instance (signature ~ (m ByteString), MonadIO m, IsUInt8Array a) => O.MethodInfo UInt8ArrayGetValuesMethodInfo a signature where
    overloadedMethod _ = uInt8ArrayGetValues

#endif


