

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::BinaryType@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.BinaryDataType
    ( 

-- * Exported types
    BinaryDataType(..)                      ,
    IsBinaryDataType                        ,
    toBinaryDataType                        ,
    noBinaryDataType                        ,


 -- * Methods
-- ** new #method:new#

    binaryDataTypeNew                       ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype BinaryDataType = BinaryDataType (ManagedPtr BinaryDataType)
foreign import ccall "garrow_binary_data_type_get_type"
    c_garrow_binary_data_type_get_type :: IO GType

instance GObject BinaryDataType where
    gobjectType _ = c_garrow_binary_data_type_get_type
    

-- | Type class for types which can be safely cast to `BinaryDataType`, for instance with `toBinaryDataType`.
class GObject o => IsBinaryDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError BinaryDataType a) =>
    IsBinaryDataType a
#endif
instance IsBinaryDataType BinaryDataType
instance Arrow.DataType.IsDataType BinaryDataType
instance GObject.Object.IsObject BinaryDataType

-- | Cast to `BinaryDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBinaryDataType :: (MonadIO m, IsBinaryDataType o) => o -> m BinaryDataType
toBinaryDataType = liftIO . unsafeCastTo BinaryDataType

-- | A convenience alias for `Nothing` :: `Maybe` `BinaryDataType`.
noBinaryDataType :: Maybe BinaryDataType
noBinaryDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveBinaryDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveBinaryDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBinaryDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBinaryDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveBinaryDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBinaryDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBinaryDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBinaryDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBinaryDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBinaryDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBinaryDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBinaryDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBinaryDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBinaryDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBinaryDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBinaryDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBinaryDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveBinaryDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBinaryDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBinaryDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBinaryDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveBinaryDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBinaryDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBinaryDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBinaryDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBinaryDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBinaryDataTypeMethod t BinaryDataType, O.MethodInfo info BinaryDataType p) => O.IsLabelProxy t (BinaryDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveBinaryDataTypeMethod t BinaryDataType, O.MethodInfo info BinaryDataType p) => O.IsLabel t (BinaryDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList BinaryDataType
type instance O.AttributeList BinaryDataType = BinaryDataTypeAttributeList
type BinaryDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList BinaryDataType = BinaryDataTypeSignalList
type BinaryDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method BinaryDataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "BinaryDataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_binary_data_type_new" garrow_binary_data_type_new :: 
    IO (Ptr BinaryDataType)

{- |
/No description available in the introspection data./
-}
binaryDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m BinaryDataType
    {- ^ __Returns:__ The newly created binary data type. -}
binaryDataTypeNew  = liftIO $ do
    result <- garrow_binary_data_type_new
    checkUnexpectedReturnNULL "binaryDataTypeNew" result
    result' <- (wrapObject BinaryDataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


