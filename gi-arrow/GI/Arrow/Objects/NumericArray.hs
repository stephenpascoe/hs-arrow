

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.NumericArray
    ( 

-- * Exported types
    NumericArray(..)                        ,
    IsNumericArray                          ,
    toNumericArray                          ,
    noNumericArray                          ,


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
import {-# SOURCE #-} qualified GI.Arrow.Objects.PrimitiveArray as Arrow.PrimitiveArray
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype NumericArray = NumericArray (ManagedPtr NumericArray)
foreign import ccall "garrow_numeric_array_get_type"
    c_garrow_numeric_array_get_type :: IO GType

instance GObject NumericArray where
    gobjectType _ = c_garrow_numeric_array_get_type
    

-- | Type class for types which can be safely cast to `NumericArray`, for instance with `toNumericArray`.
class GObject o => IsNumericArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError NumericArray a) =>
    IsNumericArray a
#endif
instance IsNumericArray NumericArray
instance Arrow.PrimitiveArray.IsPrimitiveArray NumericArray
instance Arrow.Array.IsArray NumericArray
instance GObject.Object.IsObject NumericArray

-- | Cast to `NumericArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toNumericArray :: (MonadIO m, IsNumericArray o) => o -> m NumericArray
toNumericArray = liftIO . unsafeCastTo NumericArray

-- | A convenience alias for `Nothing` :: `Maybe` `NumericArray`.
noNumericArray :: Maybe NumericArray
noNumericArray = Nothing

#if ENABLE_OVERLOADING
type family ResolveNumericArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolveNumericArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNumericArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNumericArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolveNumericArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolveNumericArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolveNumericArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolveNumericArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolveNumericArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNumericArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNumericArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNumericArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNumericArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolveNumericArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolveNumericArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNumericArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNumericArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNumericArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNumericArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNumericArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolveNumericArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNumericArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNumericArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNumericArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolveNumericArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolveNumericArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNumericArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNumericArrayMethod "getBuffer" o = Arrow.PrimitiveArray.PrimitiveArrayGetBufferMethodInfo
    ResolveNumericArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNumericArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolveNumericArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolveNumericArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolveNumericArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolveNumericArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNumericArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNumericArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolveNumericArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolveNumericArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNumericArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNumericArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNumericArrayMethod t NumericArray, O.MethodInfo info NumericArray p) => O.IsLabelProxy t (NumericArray -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveNumericArrayMethod t NumericArray, O.MethodInfo info NumericArray p) => O.IsLabel t (NumericArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList NumericArray
type instance O.AttributeList NumericArray = NumericArrayAttributeList
type NumericArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList NumericArray = NumericArraySignalList
type NumericArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif


