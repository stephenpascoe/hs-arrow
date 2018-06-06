

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.PrimitiveArray
    ( 

-- * Exported types
    PrimitiveArray(..)                      ,
    IsPrimitiveArray                        ,
    toPrimitiveArray                        ,
    noPrimitiveArray                        ,


 -- * Methods
-- ** getBuffer #method:getBuffer#

#if ENABLE_OVERLOADING
    PrimitiveArrayGetBufferMethodInfo       ,
#endif
    primitiveArrayGetBuffer                 ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype PrimitiveArray = PrimitiveArray (ManagedPtr PrimitiveArray)
foreign import ccall "garrow_primitive_array_get_type"
    c_garrow_primitive_array_get_type :: IO GType

instance GObject PrimitiveArray where
    gobjectType _ = c_garrow_primitive_array_get_type
    

-- | Type class for types which can be safely cast to `PrimitiveArray`, for instance with `toPrimitiveArray`.
class GObject o => IsPrimitiveArray o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError PrimitiveArray a) =>
    IsPrimitiveArray a
#endif
instance IsPrimitiveArray PrimitiveArray
instance Arrow.Array.IsArray PrimitiveArray
instance GObject.Object.IsObject PrimitiveArray

-- | Cast to `PrimitiveArray`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toPrimitiveArray :: (MonadIO m, IsPrimitiveArray o) => o -> m PrimitiveArray
toPrimitiveArray = liftIO . unsafeCastTo PrimitiveArray

-- | A convenience alias for `Nothing` :: `Maybe` `PrimitiveArray`.
noPrimitiveArray :: Maybe PrimitiveArray
noPrimitiveArray = Nothing

#if ENABLE_OVERLOADING
type family ResolvePrimitiveArrayMethod (t :: Symbol) (o :: *) :: * where
    ResolvePrimitiveArrayMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolvePrimitiveArrayMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolvePrimitiveArrayMethod "cast" o = Arrow.Array.ArrayCastMethodInfo
    ResolvePrimitiveArrayMethod "dictionaryEncode" o = Arrow.Array.ArrayDictionaryEncodeMethodInfo
    ResolvePrimitiveArrayMethod "equal" o = Arrow.Array.ArrayEqualMethodInfo
    ResolvePrimitiveArrayMethod "equalApprox" o = Arrow.Array.ArrayEqualApproxMethodInfo
    ResolvePrimitiveArrayMethod "equalRange" o = Arrow.Array.ArrayEqualRangeMethodInfo
    ResolvePrimitiveArrayMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolvePrimitiveArrayMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolvePrimitiveArrayMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolvePrimitiveArrayMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolvePrimitiveArrayMethod "isNull" o = Arrow.Array.ArrayIsNullMethodInfo
    ResolvePrimitiveArrayMethod "isValid" o = Arrow.Array.ArrayIsValidMethodInfo
    ResolvePrimitiveArrayMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolvePrimitiveArrayMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolvePrimitiveArrayMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolvePrimitiveArrayMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolvePrimitiveArrayMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolvePrimitiveArrayMethod "slice" o = Arrow.Array.ArraySliceMethodInfo
    ResolvePrimitiveArrayMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolvePrimitiveArrayMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolvePrimitiveArrayMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolvePrimitiveArrayMethod "toString" o = Arrow.Array.ArrayToStringMethodInfo
    ResolvePrimitiveArrayMethod "unique" o = Arrow.Array.ArrayUniqueMethodInfo
    ResolvePrimitiveArrayMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolvePrimitiveArrayMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolvePrimitiveArrayMethod "getBuffer" o = PrimitiveArrayGetBufferMethodInfo
    ResolvePrimitiveArrayMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolvePrimitiveArrayMethod "getLength" o = Arrow.Array.ArrayGetLengthMethodInfo
    ResolvePrimitiveArrayMethod "getNNulls" o = Arrow.Array.ArrayGetNNullsMethodInfo
    ResolvePrimitiveArrayMethod "getNullBitmap" o = Arrow.Array.ArrayGetNullBitmapMethodInfo
    ResolvePrimitiveArrayMethod "getOffset" o = Arrow.Array.ArrayGetOffsetMethodInfo
    ResolvePrimitiveArrayMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolvePrimitiveArrayMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolvePrimitiveArrayMethod "getValueDataType" o = Arrow.Array.ArrayGetValueDataTypeMethodInfo
    ResolvePrimitiveArrayMethod "getValueType" o = Arrow.Array.ArrayGetValueTypeMethodInfo
    ResolvePrimitiveArrayMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolvePrimitiveArrayMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolvePrimitiveArrayMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolvePrimitiveArrayMethod t PrimitiveArray, O.MethodInfo info PrimitiveArray p) => O.IsLabelProxy t (PrimitiveArray -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolvePrimitiveArrayMethod t PrimitiveArray, O.MethodInfo info PrimitiveArray p) => O.IsLabel t (PrimitiveArray -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList PrimitiveArray
type instance O.AttributeList PrimitiveArray = PrimitiveArrayAttributeList
type PrimitiveArrayAttributeList = ('[ '("array", Arrow.Array.ArrayArrayPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList PrimitiveArray = PrimitiveArraySignalList
type PrimitiveArraySignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method PrimitiveArray::get_buffer
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "PrimitiveArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowPrimitiveArray.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Buffer"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_primitive_array_get_buffer" garrow_primitive_array_get_buffer :: 
    Ptr PrimitiveArray ->                   -- array : TInterface (Name {namespace = "Arrow", name = "PrimitiveArray"})
    IO (Ptr Arrow.Buffer.Buffer)

{- |
/No description available in the introspection data./
-}
primitiveArrayGetBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, IsPrimitiveArray a) =>
    a
    {- ^ /@array@/: A 'GI.Arrow.Objects.PrimitiveArray.PrimitiveArray'. -}
    -> m Arrow.Buffer.Buffer
    {- ^ __Returns:__ The data of the array as 'GI.Arrow.Objects.Buffer.Buffer'. -}
primitiveArrayGetBuffer array = liftIO $ do
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_primitive_array_get_buffer array'
    checkUnexpectedReturnNULL "primitiveArrayGetBuffer" result
    result' <- (wrapObject Arrow.Buffer.Buffer) result
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
data PrimitiveArrayGetBufferMethodInfo
instance (signature ~ (m Arrow.Buffer.Buffer), MonadIO m, IsPrimitiveArray a) => O.MethodInfo PrimitiveArrayGetBufferMethodInfo a signature where
    overloadedMethod _ = primitiveArrayGetBuffer

#endif


