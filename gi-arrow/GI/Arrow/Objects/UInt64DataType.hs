

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.UInt64DataType
    ( 

-- * Exported types
    UInt64DataType(..)                      ,
    IsUInt64DataType                        ,
    toUInt64DataType                        ,
    noUInt64DataType                        ,


 -- * Methods
-- ** new #method:new#

    uInt64DataTypeNew                       ,




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
newtype UInt64DataType = UInt64DataType (ManagedPtr UInt64DataType)
foreign import ccall "garrow_uint64_data_type_get_type"
    c_garrow_uint64_data_type_get_type :: IO GType

instance GObject UInt64DataType where
    gobjectType _ = c_garrow_uint64_data_type_get_type
    

-- | Type class for types which can be safely cast to `UInt64DataType`, for instance with `toUInt64DataType`.
class GObject o => IsUInt64DataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError UInt64DataType a) =>
    IsUInt64DataType a
#endif
instance IsUInt64DataType UInt64DataType
instance Arrow.IntegerDataType.IsIntegerDataType UInt64DataType
instance Arrow.NumericDataType.IsNumericDataType UInt64DataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType UInt64DataType
instance Arrow.DataType.IsDataType UInt64DataType
instance GObject.Object.IsObject UInt64DataType

-- | Cast to `UInt64DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt64DataType :: (MonadIO m, IsUInt64DataType o) => o -> m UInt64DataType
toUInt64DataType = liftIO . unsafeCastTo UInt64DataType

-- | A convenience alias for `Nothing` :: `Maybe` `UInt64DataType`.
noUInt64DataType :: Maybe UInt64DataType
noUInt64DataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveUInt64DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt64DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt64DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt64DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveUInt64DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt64DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt64DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt64DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt64DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt64DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt64DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt64DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt64DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt64DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt64DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt64DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt64DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveUInt64DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt64DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt64DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveUInt64DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt64DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveUInt64DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt64DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt64DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt64DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt64DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt64DataTypeMethod t UInt64DataType, O.MethodInfo info UInt64DataType p) => O.IsLabelProxy t (UInt64DataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveUInt64DataTypeMethod t UInt64DataType, O.MethodInfo info UInt64DataType p) => O.IsLabel t (UInt64DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList UInt64DataType
type instance O.AttributeList UInt64DataType = UInt64DataTypeAttributeList
type UInt64DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList UInt64DataType = UInt64DataTypeSignalList
type UInt64DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt64DataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "UInt64DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint64_data_type_new" garrow_uint64_data_type_new :: 
    IO (Ptr UInt64DataType)

{- |
/No description available in the introspection data./
-}
uInt64DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UInt64DataType
    {- ^ __Returns:__ The newly created 64-bit unsigned integer data type. -}
uInt64DataTypeNew  = liftIO $ do
    result <- garrow_uint64_data_type_new
    checkUnexpectedReturnNULL "uInt64DataTypeNew" result
    result' <- (wrapObject UInt64DataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


