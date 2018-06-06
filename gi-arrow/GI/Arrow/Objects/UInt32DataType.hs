

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.UInt32DataType
    ( 

-- * Exported types
    UInt32DataType(..)                      ,
    IsUInt32DataType                        ,
    toUInt32DataType                        ,
    noUInt32DataType                        ,


 -- * Methods
-- ** new #method:new#

    uInt32DataTypeNew                       ,




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
newtype UInt32DataType = UInt32DataType (ManagedPtr UInt32DataType)
foreign import ccall "garrow_uint32_data_type_get_type"
    c_garrow_uint32_data_type_get_type :: IO GType

instance GObject UInt32DataType where
    gobjectType _ = c_garrow_uint32_data_type_get_type
    

-- | Type class for types which can be safely cast to `UInt32DataType`, for instance with `toUInt32DataType`.
class GObject o => IsUInt32DataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError UInt32DataType a) =>
    IsUInt32DataType a
#endif
instance IsUInt32DataType UInt32DataType
instance Arrow.IntegerDataType.IsIntegerDataType UInt32DataType
instance Arrow.NumericDataType.IsNumericDataType UInt32DataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType UInt32DataType
instance Arrow.DataType.IsDataType UInt32DataType
instance GObject.Object.IsObject UInt32DataType

-- | Cast to `UInt32DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt32DataType :: (MonadIO m, IsUInt32DataType o) => o -> m UInt32DataType
toUInt32DataType = liftIO . unsafeCastTo UInt32DataType

-- | A convenience alias for `Nothing` :: `Maybe` `UInt32DataType`.
noUInt32DataType :: Maybe UInt32DataType
noUInt32DataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveUInt32DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt32DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt32DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt32DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveUInt32DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt32DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt32DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt32DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt32DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt32DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt32DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt32DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt32DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt32DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt32DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt32DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt32DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveUInt32DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt32DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt32DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveUInt32DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt32DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveUInt32DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt32DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt32DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt32DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt32DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt32DataTypeMethod t UInt32DataType, O.MethodInfo info UInt32DataType p) => O.IsLabelProxy t (UInt32DataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveUInt32DataTypeMethod t UInt32DataType, O.MethodInfo info UInt32DataType p) => O.IsLabel t (UInt32DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList UInt32DataType
type instance O.AttributeList UInt32DataType = UInt32DataTypeAttributeList
type UInt32DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList UInt32DataType = UInt32DataTypeSignalList
type UInt32DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt32DataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "UInt32DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint32_data_type_new" garrow_uint32_data_type_new :: 
    IO (Ptr UInt32DataType)

{- |
/No description available in the introspection data./
-}
uInt32DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UInt32DataType
    {- ^ __Returns:__ The newly created 32-bit unsigned integer data type. -}
uInt32DataTypeNew  = liftIO $ do
    result <- garrow_uint32_data_type_new
    checkUnexpectedReturnNULL "uInt32DataTypeNew" result
    result' <- (wrapObject UInt32DataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


