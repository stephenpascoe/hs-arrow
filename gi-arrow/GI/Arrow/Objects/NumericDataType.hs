

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.NumericDataType
    ( 

-- * Exported types
    NumericDataType(..)                     ,
    IsNumericDataType                       ,
    toNumericDataType                       ,
    noNumericDataType                       ,


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

import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.FixedWidthDataType as Arrow.FixedWidthDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype NumericDataType = NumericDataType (ManagedPtr NumericDataType)
foreign import ccall "garrow_numeric_data_type_get_type"
    c_garrow_numeric_data_type_get_type :: IO GType

instance GObject NumericDataType where
    gobjectType _ = c_garrow_numeric_data_type_get_type
    

-- | Type class for types which can be safely cast to `NumericDataType`, for instance with `toNumericDataType`.
class GObject o => IsNumericDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError NumericDataType a) =>
    IsNumericDataType a
#endif
instance IsNumericDataType NumericDataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType NumericDataType
instance Arrow.DataType.IsDataType NumericDataType
instance GObject.Object.IsObject NumericDataType

-- | Cast to `NumericDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toNumericDataType :: (MonadIO m, IsNumericDataType o) => o -> m NumericDataType
toNumericDataType = liftIO . unsafeCastTo NumericDataType

-- | A convenience alias for `Nothing` :: `Maybe` `NumericDataType`.
noNumericDataType :: Maybe NumericDataType
noNumericDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveNumericDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveNumericDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNumericDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNumericDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveNumericDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNumericDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNumericDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNumericDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNumericDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNumericDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNumericDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNumericDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNumericDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNumericDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNumericDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNumericDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNumericDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveNumericDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNumericDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNumericDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveNumericDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNumericDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveNumericDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNumericDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNumericDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNumericDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNumericDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNumericDataTypeMethod t NumericDataType, O.MethodInfo info NumericDataType p) => O.IsLabelProxy t (NumericDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveNumericDataTypeMethod t NumericDataType, O.MethodInfo info NumericDataType p) => O.IsLabel t (NumericDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList NumericDataType
type instance O.AttributeList NumericDataType = NumericDataTypeAttributeList
type NumericDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList NumericDataType = NumericDataTypeSignalList
type NumericDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif


