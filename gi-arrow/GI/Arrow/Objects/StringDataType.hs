

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::StringType@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.StringDataType
    ( 

-- * Exported types
    StringDataType(..)                      ,
    IsStringDataType                        ,
    toStringDataType                        ,
    noStringDataType                        ,


 -- * Methods
-- ** new #method:new#

    stringDataTypeNew                       ,




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
newtype StringDataType = StringDataType (ManagedPtr StringDataType)
foreign import ccall "garrow_string_data_type_get_type"
    c_garrow_string_data_type_get_type :: IO GType

instance GObject StringDataType where
    gobjectType _ = c_garrow_string_data_type_get_type
    

-- | Type class for types which can be safely cast to `StringDataType`, for instance with `toStringDataType`.
class GObject o => IsStringDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError StringDataType a) =>
    IsStringDataType a
#endif
instance IsStringDataType StringDataType
instance Arrow.DataType.IsDataType StringDataType
instance GObject.Object.IsObject StringDataType

-- | Cast to `StringDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStringDataType :: (MonadIO m, IsStringDataType o) => o -> m StringDataType
toStringDataType = liftIO . unsafeCastTo StringDataType

-- | A convenience alias for `Nothing` :: `Maybe` `StringDataType`.
noStringDataType :: Maybe StringDataType
noStringDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveStringDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveStringDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStringDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStringDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveStringDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStringDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStringDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStringDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStringDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStringDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStringDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStringDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStringDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStringDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStringDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStringDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStringDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveStringDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStringDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStringDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStringDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveStringDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStringDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStringDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStringDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStringDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStringDataTypeMethod t StringDataType, O.MethodInfo info StringDataType p) => O.IsLabelProxy t (StringDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveStringDataTypeMethod t StringDataType, O.MethodInfo info StringDataType p) => O.IsLabel t (StringDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList StringDataType
type instance O.AttributeList StringDataType = StringDataTypeAttributeList
type StringDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList StringDataType = StringDataTypeSignalList
type StringDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method StringDataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "StringDataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_string_data_type_new" garrow_string_data_type_new :: 
    IO (Ptr StringDataType)

{- |
/No description available in the introspection data./
-}
stringDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m StringDataType
    {- ^ __Returns:__ The newly created UTF-8 encoded string data type. -}
stringDataTypeNew  = liftIO $ do
    result <- garrow_string_data_type_new
    checkUnexpectedReturnNULL "stringDataTypeNew" result
    result' <- (wrapObject StringDataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


