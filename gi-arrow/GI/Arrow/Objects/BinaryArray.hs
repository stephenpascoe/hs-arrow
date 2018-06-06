

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::BinaryArray@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.BinaryArray
    ( 

-- * Exported types
    BinaryArray(..)                         ,
    IsBinaryArray                           ,
    toBinaryArray                           ,
    noBinaryArray                           ,


 -- * Methods
-- ** getBuffer #method:getBuffer#

#if ENABLE_OVERLOADING
    BinaryArrayGetBufferMethodInfo          ,
#endif
    binaryArrayGetBuffer                    ,


-- ** getOffsetsBuffer #method:getOffsetsBuffer#

#if ENABLE_OVERLOADING
    BinaryArrayGetOffsetsBufferMethodInfo   ,
#endif
    binaryArrayGetOffsetsBuffer             ,


-- ** getValue #method:getValue#

#if ENABLE_OVERLOADING
    BinaryArrayGetValueMethodInfo           ,
#endif
    binaryArrayGetValue                     ,


-- ** new #method:new#

    binaryArrayNew                          ,




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
import qualified GI.GLib.Structs.Bytes as GLib.Bytes
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype BinaryArray = BinaryArray (ManagedPtr BinaryArray)
foreign import ccall "garrow_binary_array_get_type"
    c_garrow_binary_array_get_type :: IO GType

instance GObject BinaryArray where
    gobjectType _ = c_garrow_binary_array_get_type
    

-- | Type class for types which can be safely cast to `BinaryArray`, for instance with `toBinaryArray`.
class GObject o => IsBinaryArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError BinaryArray a) =>
    IsBinaryArray a
#endif
instance IsBinaryArray BinaryArray
instance Arrow.Array.IsArray BinaryArray
instance GObject.Object.IsObject BinaryArray

-- | Cast to `BinaryArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBinaryArray :: (MonadIO m, IsBinaryArray o) => o -> m BinaryArray
toBinaryArray = liftIO . unsafeCastTo BinaryArray

-- | A convenience alias for `Nothing` :: `Maybe` `BinaryArray`.
noBinaryArray :: Maybe BinaryArray
noBinaryArray = Nothing

#if ENABLE_OVERLOADING
type family ResolveBinaryArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveBinaryArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBinaryArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBinaryArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveBinaryArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveBinaryArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveBinaryArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveBinaryArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveBinaryArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBinaryArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBinaryArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBinaryArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBinaryArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveBinaryArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveBinaryArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBinaryArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBinaryArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBinaryArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBinaryArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBinaryArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveBinaryArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBinaryArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBinaryArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBinaryArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveBinaryArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveBinaryArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBinaryArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBinaryArrayMethod "getBuffer" o = BinaryArrayGetBufferMethodInfo
    ResolveBinaryArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBinaryArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveBinaryArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveBinaryArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveBinaryArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveBinaryArrayMethod "getOffsetsBuffer" o = BinaryArrayGetOffsetsBufferMethodInfo
    ResolveBinaryArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBinaryArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBinaryArrayMethod "getValue" o = BinaryArrayGetValueMethodInfo
    ResolveBinaryArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveBinaryArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveBinaryArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBinaryArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBinaryArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBinaryArrayMethod t BinaryArray, O.MethodInfo info BinaryArray p) => O.IsLabelProxy t (BinaryArray -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveBinaryArrayMethod t BinaryArray, O.MethodInfo info BinaryArray p) => O.IsLabel t (BinaryArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList BinaryArray
type instance O.AttributeList BinaryArray = BinaryArrayAttributeList
type BinaryArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList BinaryArray = BinaryArraySignalList
type BinaryArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method BinaryArray::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value_offsets", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The value offsets of @data in Arrow format.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "BinaryArray"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_binary_array_new" garrow_binary_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- value_offsets : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr BinaryArray)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
binaryArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Buffer.IsBuffer a, Arrow.Buffer.IsBuffer b, Arrow.Buffer.IsBuffer c) =>
    Int64
    {- ^ /@length@/: The number of elements. -}
    -> a
    {- ^ /@valueOffsets@/: The value offsets of /@data@/ in Arrow format. -}
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
    -> m BinaryArray
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.BinaryArray.BinaryArray'. -}
binaryArrayNew length_ valueOffsets data_ nullBitmap nNulls = liftIO $ do
    valueOffsets' <- unsafeManagedPtrCastPtr valueOffsets
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_binary_array_new length_ valueOffsets' data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "binaryArrayNew" result
    result' <- (wrapObject BinaryArray) result
    touchManagedPtr valueOffsets
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method BinaryArray::get_buffer
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "BinaryArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBinaryArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Buffer"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_binary_array_get_buffer" garrow_binary_array_get_buffer :: 
    Ptr BinaryArray ->                      -- array : TInterface (Name {namespace = "Arrow", name = "BinaryArray"})
    IO (Ptr Arrow.Buffer.Buffer)

{- |
/No description available in the introspection data./
-}
binaryArrayGetBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, IsBinaryArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.BinaryArray.BinaryArray'. -}
    -> m Arrow.Buffer.Buffer
    {- ^ __Returns:__ The data of the array as 'GI.Arrow.Objects.Buffer.Buffer'. -}
binaryArrayGetBuffer array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_binary_array_get_buffer array'
    checkUnexpectedReturnNULL "binaryArrayGetBuffer" result
    result' <- (wrapObject Arrow.Buffer.Buffer) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data BinaryArrayGetBufferMethodInfo
instance (signature ~ (m Arrow.Buffer.Buffer), MonadIO m, IsBinaryArray a) => O.MethodInfo BinaryArrayGetBufferMethodInfo a signature where
    overloadedMethod _ = binaryArrayGetBuffer

#endif

-- method BinaryArray::get_offsets_buffer
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "BinaryArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBinaryArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Buffer"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_binary_array_get_offsets_buffer" garrow_binary_array_get_offsets_buffer :: 
    Ptr BinaryArray ->                      -- array : TInterface (Name {namespace = "Arrow", name = "BinaryArray"})
    IO (Ptr Arrow.Buffer.Buffer)

{- |
/No description available in the introspection data./
-}
binaryArrayGetOffsetsBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, IsBinaryArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.BinaryArray.BinaryArray'. -}
    -> m Arrow.Buffer.Buffer
    {- ^ __Returns:__ The offsets of the array as 'GI.Arrow.Objects.Buffer.Buffer'. -}
binaryArrayGetOffsetsBuffer array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_binary_array_get_offsets_buffer array'
    checkUnexpectedReturnNULL "binaryArrayGetOffsetsBuffer" result
    result' <- (wrapObject Arrow.Buffer.Buffer) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data BinaryArrayGetOffsetsBufferMethodInfo
instance (signature ~ (m Arrow.Buffer.Buffer), MonadIO m, IsBinaryArray a) => O.MethodInfo BinaryArrayGetOffsetsBufferMethodInfo a signature where
    overloadedMethod _ = binaryArrayGetOffsetsBuffer

#endif

-- method BinaryArray::get_value
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "BinaryArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBinaryArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "GLib", name = "Bytes"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_binary_array_get_value" garrow_binary_array_get_value :: 
    Ptr BinaryArray ->                      -- array : TInterface (Name {namespace = "Arrow", name = "BinaryArray"})
    Int64 ->                                -- i : TBasicType TInt64
    IO (Ptr GLib.Bytes.Bytes)

{- |
/No description available in the introspection data./
-}
binaryArrayGetValue ::
    (B.CallStack.HasCallStack, MonadIO m, IsBinaryArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.BinaryArray.BinaryArray'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m GLib.Bytes.Bytes
    {- ^ __Returns:__ The i-th value. -}
binaryArrayGetValue array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_binary_array_get_value array' i
    checkUnexpectedReturnNULL "binaryArrayGetValue" result
    result' <- (wrapBoxed GLib.Bytes.Bytes) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data BinaryArrayGetValueMethodInfo
instance (signature ~ (Int64 -> m GLib.Bytes.Bytes), MonadIO m, IsBinaryArray a) => O.MethodInfo BinaryArrayGetValueMethodInfo a signature where
    overloadedMethod _ = binaryArrayGetValue

#endif


