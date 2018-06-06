

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::StringArray@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.StringArray
    ( 

-- * Exported types
    StringArray(..)                         ,
    IsStringArray                           ,
    toStringArray                           ,
    noStringArray                           ,


 -- * Methods
-- ** getString #method:getString#

#if ENABLE_OVERLOADING
    StringArrayGetStringMethodInfo          ,
#endif
    stringArrayGetString                    ,


-- ** new #method:new#

    stringArrayNew                          ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.BinaryArray as Arrow.BinaryArray
import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype StringArray = StringArray (ManagedPtr StringArray)
foreign import ccall "garrow_string_array_get_type"
    c_garrow_string_array_get_type :: IO GType

instance GObject StringArray where
    gobjectType _ = c_garrow_string_array_get_type
    

-- | Type class for types which can be safely cast to `StringArray`, for instance with `toStringArray`.
class GObject o => IsStringArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError StringArray a) =>
    IsStringArray a
#endif
instance IsStringArray StringArray
instance Arrow.BinaryArray.IsBinaryArray StringArray
instance Arrow.Array.IsArray StringArray
instance GObject.Object.IsObject StringArray

-- | Cast to `StringArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStringArray :: (MonadIO m, IsStringArray o) => o -> m StringArray
toStringArray = liftIO . unsafeCastTo StringArray

-- | A convenience alias for `Nothing` :: `Maybe` `StringArray`.
noStringArray :: Maybe StringArray
noStringArray = Nothing

#if ENABLE_OVERLOADING
type family ResolveStringArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveStringArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStringArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStringArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveStringArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveStringArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveStringArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveStringArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveStringArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStringArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStringArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStringArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStringArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveStringArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveStringArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStringArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStringArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStringArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStringArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStringArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveStringArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStringArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStringArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStringArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveStringArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveStringArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStringArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStringArrayMethod "getBuffer" o = Arrow.BinaryArray.BinaryArrayGetBufferMethodInfo
    ResolveStringArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStringArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveStringArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveStringArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveStringArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveStringArrayMethod "getOffsetsBuffer" o = Arrow.BinaryArray.BinaryArrayGetOffsetsBufferMethodInfo
    ResolveStringArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStringArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStringArrayMethod "getString" o = StringArrayGetStringMethodInfo
    ResolveStringArrayMethod "getValue" o = Arrow.BinaryArray.BinaryArrayGetValueMethodInfo
    ResolveStringArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveStringArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveStringArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStringArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStringArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStringArrayMethod t StringArray, O.MethodInfo info StringArray p) => O.IsLabelProxy t (StringArray -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveStringArrayMethod t StringArray, O.MethodInfo info StringArray p) => O.IsLabel t (StringArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList StringArray
type instance O.AttributeList StringArray = StringArrayAttributeList
type StringArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList StringArray = StringArraySignalList
type StringArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method StringArray::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of elements.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value_offsets", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The value offsets of @data in Arrow format.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The binary data in Arrow format of the array.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "null_bitmap", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The bitmap that shows null elements. The\n  N-th element is null when the N-th bit is 0, not null otherwise.\n  If the array has no null elements, the bitmap must be %NULL and\n  @n_nulls is 0.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_nulls", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null elements. If -1 is specified, the\n  number of nulls are computed from @null_bitmap.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "StringArray"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_string_array_new" garrow_string_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    Ptr Arrow.Buffer.Buffer ->              -- value_offsets : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Arrow.Buffer.Buffer ->              -- null_bitmap : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Int64 ->                                -- n_nulls : TBasicType TInt64
    IO (Ptr StringArray)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
stringArrayNew ::
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
    -> m StringArray
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.StringArray.StringArray'. -}
stringArrayNew length_ valueOffsets data_ nullBitmap nNulls = liftIO $ do
    valueOffsets' <- unsafeManagedPtrCastPtr valueOffsets
    data_' <- unsafeManagedPtrCastPtr data_
    maybeNullBitmap <- case nullBitmap of
        Nothing -> return nullPtr
        Just jNullBitmap -> do
            jNullBitmap' <- unsafeManagedPtrCastPtr jNullBitmap
            return jNullBitmap'
    result <- garrow_string_array_new length_ valueOffsets' data_' maybeNullBitmap nNulls
    checkUnexpectedReturnNULL "stringArrayNew" result
    result' <- (wrapObject StringArray) result
    touchManagedPtr valueOffsets
    touchManagedPtr data_
    whenJust nullBitmap touchManagedPtr
    return result'

#if ENABLE_OVERLOADING
#endif

-- method StringArray::get_string
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "StringArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowStringArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_string_array_get_string" garrow_string_array_get_string :: 
    Ptr StringArray ->                      -- array : TInterface (Name {namespace = "Arrow", name = "StringArray"})
    Int64 ->                                -- i : TBasicType TInt64
    IO CString

{- |
/No description available in the introspection data./
-}
stringArrayGetString ::
    (B.CallStack.HasCallStack, MonadIO m, IsStringArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.StringArray.StringArray'. -}
    -> Int64
    {- ^ /@i@/: The index of the target value. -}
    -> m T.Text
    {- ^ __Returns:__ The i-th UTF-8 encoded string. -}
stringArrayGetString array i = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_string_array_get_string array' i
    checkUnexpectedReturnNULL "stringArrayGetString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data StringArrayGetStringMethodInfo
instance (signature ~ (Int64 -> m T.Text), MonadIO m, IsStringArray a) => O.MethodInfo StringArrayGetStringMethodInfo a signature where
    overloadedMethod _ = stringArrayGetString

#endif


