

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::NullType@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.NullDataType
    ( 

-- * Exported types
    NullDataType(..)                        ,
    IsNullDataType                          ,
    toNullDataType                          ,
    noNullDataType                          ,


 -- * Methods
-- ** new #method:new#

    nullDataTypeNew                         ,




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
newtype NullDataType = NullDataType (ManagedPtr NullDataType)
foreign import ccall "garrow_null_data_type_get_type"
    c_garrow_null_data_type_get_type :: IO GType

instance GObject NullDataType where
    gobjectType _ = c_garrow_null_data_type_get_type
    

-- | Type class for types which can be safely cast to `NullDataType`, for instance with `toNullDataType`.
class GObject o => IsNullDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError NullDataType a) =>
    IsNullDataType a
#endif
instance IsNullDataType NullDataType
instance Arrow.DataType.IsDataType NullDataType
instance GObject.Object.IsObject NullDataType

-- | Cast to `NullDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toNullDataType :: (MonadIO m, IsNullDataType o) => o -> m NullDataType
toNullDataType = liftIO . unsafeCastTo NullDataType

-- | A convenience alias for `Nothing` :: `Maybe` `NullDataType`.
noNullDataType :: Maybe NullDataType
noNullDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveNullDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveNullDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveNullDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveNullDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveNullDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveNullDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveNullDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveNullDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveNullDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveNullDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveNullDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveNullDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveNullDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveNullDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveNullDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveNullDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveNullDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveNullDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveNullDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveNullDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveNullDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveNullDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveNullDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveNullDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveNullDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveNullDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveNullDataTypeMethod t NullDataType, O.MethodInfo info NullDataType p) => O.IsLabelProxy t (NullDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveNullDataTypeMethod t NullDataType, O.MethodInfo info NullDataType p) => O.IsLabel t (NullDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList NullDataType
type instance O.AttributeList NullDataType = NullDataTypeAttributeList
type NullDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList NullDataType = NullDataTypeSignalList
type NullDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method NullDataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "NullDataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_null_data_type_new" garrow_null_data_type_new :: 
    IO (Ptr NullDataType)

{- |
/No description available in the introspection data./
-}
nullDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m NullDataType
    {- ^ __Returns:__ The newly created null data type. -}
nullDataTypeNew  = liftIO $ do
    result <- garrow_null_data_type_new
    checkUnexpectedReturnNULL "nullDataTypeNew" result
    result' <- (wrapObject NullDataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


