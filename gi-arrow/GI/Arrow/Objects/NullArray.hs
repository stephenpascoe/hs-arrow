

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::NullArray@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.NullArray
    ( 

-- * Exported types
    NullArray(..)                           ,
    IsNullArray                             ,
    toNullArray                             ,
    noNullArray                             ,


 -- * Methods
-- ** new #method:new#

    nullArrayNew                            ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype NullArray = NullArray (ManagedPtr NullArray)
foreign import ccall "garrow_null_array_get_type"
    c_garrow_null_array_get_type :: IO GType

instance GObject NullArray where
    gobjectType _ = c_garrow_null_array_get_type
    

-- | Type class for types which can be safely cast to `NullArray`, for instance with `toNullArray`.
class GObject o => IsNullArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError NullArray a) =>
    IsNullArray a
#endif
instance IsNullArray NullArray
instance Arrow.Array.IsArray NullArray
instance GObject.Object.IsObject NullArray

-- | Cast to `NullArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toNullArray :: (MonadIO m, IsNullArray o) => o -> m NullArray
toNullArray = liftIO . unsafeCastTo NullArray

-- | A convenience alias for `Nothing` :: `Maybe` `NullArray`.
noNullArray :: Maybe NullArray
noNullArray = Nothing

#if ENABLE_OVERLOADING
type family ResolveNullArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveNullArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNullArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNullArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveNullArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveNullArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveNullArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveNullArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveNullArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNullArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNullArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNullArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNullArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveNullArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveNullArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNullArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNullArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNullArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNullArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNullArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveNullArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNullArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNullArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNullArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveNullArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveNullArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNullArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNullArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNullArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveNullArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveNullArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveNullArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveNullArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNullArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNullArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveNullArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveNullArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNullArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNullArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNullArrayMethod t NullArray, O.MethodInfo info NullArray p) => O.IsLabelProxy t (NullArray -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveNullArrayMethod t NullArray, O.MethodInfo info NullArray p) => O.IsLabel t (NullArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList NullArray
type instance O.AttributeList NullArray = NullArrayAttributeList
type NullArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList NullArray = NullArraySignalList
type NullArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method NullArray::new
-- method type : Constructor
-- Args : [Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "An array length.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "NullArray"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_null_array_new" garrow_null_array_new :: 
    Int64 ->                                -- length : TBasicType TInt64
    IO (Ptr NullArray)

{- |
/No description available in the introspection data./
-}
nullArrayNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Int64
    {- ^ /@length@/: An array length. -}
    -> m NullArray
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.NullArray.NullArray'. -}
nullArrayNew length_ = liftIO $ do
    result <- garrow_null_array_new length_
    checkUnexpectedReturnNULL "nullArrayNew" result
    result' <- (wrapObject NullArray) result
    return result'

#if ENABLE_OVERLOADING
#endif


