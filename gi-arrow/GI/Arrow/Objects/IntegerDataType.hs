

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.IntegerDataType
    ( 

-- * Exported types
    IntegerDataType(..)                     ,
    IsIntegerDataType                       ,
    toIntegerDataType                       ,
    noIntegerDataType                       ,


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
import {-# SOURCE #-} qualified GI.Arrow.Objects.NumericDataType as Arrow.NumericDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype IntegerDataType = IntegerDataType (ManagedPtr IntegerDataType)
foreign import ccall "garrow_integer_data_type_get_type"
    c_garrow_integer_data_type_get_type :: IO GType

instance GObject IntegerDataType where
    gobjectType _ = c_garrow_integer_data_type_get_type
    

-- | Type class for types which can be safely cast to `IntegerDataType`, for instance with `toIntegerDataType`.
class GObject o => IsIntegerDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError IntegerDataType a) =>
    IsIntegerDataType a
#endif
instance IsIntegerDataType IntegerDataType
instance Arrow.NumericDataType.IsNumericDataType IntegerDataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType IntegerDataType
instance Arrow.DataType.IsDataType IntegerDataType
instance GObject.Object.IsObject IntegerDataType

-- | Cast to `IntegerDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toIntegerDataType :: (MonadIO m, IsIntegerDataType o) => o -> m IntegerDataType
toIntegerDataType = liftIO . unsafeCastTo IntegerDataType

-- | A convenience alias for `Nothing` :: `Maybe` `IntegerDataType`.
noIntegerDataType :: Maybe IntegerDataType
noIntegerDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveIntegerDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveIntegerDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveIntegerDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveIntegerDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveIntegerDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveIntegerDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveIntegerDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveIntegerDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveIntegerDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveIntegerDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveIntegerDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveIntegerDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveIntegerDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveIntegerDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveIntegerDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveIntegerDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveIntegerDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveIntegerDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveIntegerDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveIntegerDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveIntegerDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveIntegerDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveIntegerDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveIntegerDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveIntegerDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveIntegerDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveIntegerDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveIntegerDataTypeMethod t IntegerDataType, O.MethodInfo info IntegerDataType p) => O.IsLabelProxy t (IntegerDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveIntegerDataTypeMethod t IntegerDataType, O.MethodInfo info IntegerDataType p) => O.IsLabel t (IntegerDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList IntegerDataType
type instance O.AttributeList IntegerDataType = IntegerDataTypeAttributeList
type IntegerDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList IntegerDataType = IntegerDataTypeSignalList
type IntegerDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif


