

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.UInt8DataType
    ( 

-- * Exported types
    UInt8DataType(..)                       ,
    IsUInt8DataType                         ,
    toUInt8DataType                         ,
    noUInt8DataType                         ,


 -- * Methods
-- ** new #method:new#

    uInt8DataTypeNew                        ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.IntegerDataType as Arrow.IntegerDataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.NumericDataType as Arrow.NumericDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype UInt8DataType = UInt8DataType (ManagedPtr UInt8DataType)
foreign import ccall "garrow_uint8_data_type_get_type"
    c_garrow_uint8_data_type_get_type :: IO GType

instance GObject UInt8DataType where
    gobjectType _ = c_garrow_uint8_data_type_get_type
    

-- | Type class for types which can be safely cast to `UInt8DataType`, for instance with `toUInt8DataType`.
class GObject o => IsUInt8DataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError UInt8DataType a) =>
    IsUInt8DataType a
#endif
instance IsUInt8DataType UInt8DataType
instance Arrow.IntegerDataType.IsIntegerDataType UInt8DataType
instance Arrow.NumericDataType.IsNumericDataType UInt8DataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType UInt8DataType
instance Arrow.DataType.IsDataType UInt8DataType
instance GObject.Object.IsObject UInt8DataType

-- | Cast to `UInt8DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt8DataType :: (MonadIO m, IsUInt8DataType o) => o -> m UInt8DataType
toUInt8DataType = liftIO . unsafeCastTo UInt8DataType

-- | A convenience alias for `Nothing` :: `Maybe` `UInt8DataType`.
noUInt8DataType :: Maybe UInt8DataType
noUInt8DataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveUInt8DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt8DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt8DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt8DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveUInt8DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt8DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt8DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt8DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt8DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt8DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt8DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt8DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt8DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt8DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt8DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt8DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt8DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveUInt8DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt8DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt8DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveUInt8DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt8DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveUInt8DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt8DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt8DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt8DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt8DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt8DataTypeMethod t UInt8DataType, O.MethodInfo info UInt8DataType p) => O.IsLabelProxy t (UInt8DataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveUInt8DataTypeMethod t UInt8DataType, O.MethodInfo info UInt8DataType p) => O.IsLabel t (UInt8DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList UInt8DataType
type instance O.AttributeList UInt8DataType = UInt8DataTypeAttributeList
type UInt8DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList UInt8DataType = UInt8DataTypeSignalList
type UInt8DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt8DataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "UInt8DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint8_data_type_new" garrow_uint8_data_type_new :: 
    IO (Ptr UInt8DataType)

{- |
/No description available in the introspection data./
-}
uInt8DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UInt8DataType
    {- ^ __Returns:__ The newly created 8-bit unsigned integer data type. -}
uInt8DataTypeNew  = liftIO $ do
    result <- garrow_uint8_data_type_new
    checkUnexpectedReturnNULL "uInt8DataTypeNew" result
    result' <- (wrapObject UInt8DataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


