

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Int32DataType
    ( 

-- * Exported types
    Int32DataType(..)                       ,
    IsInt32DataType                         ,
    toInt32DataType                         ,
    noInt32DataType                         ,


 -- * Methods
-- ** new #method:new#

    int32DataTypeNew                        ,




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
newtype Int32DataType = Int32DataType (ManagedPtr Int32DataType)
foreign import ccall "garrow_int32_data_type_get_type"
    c_garrow_int32_data_type_get_type :: IO GType

instance GObject Int32DataType where
    gobjectType _ = c_garrow_int32_data_type_get_type
    

-- | Type class for types which can be safely cast to `Int32DataType`, for instance with `toInt32DataType`.
class GObject o => IsInt32DataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Int32DataType a) =>
    IsInt32DataType a
#endif
instance IsInt32DataType Int32DataType
instance Arrow.IntegerDataType.IsIntegerDataType Int32DataType
instance Arrow.NumericDataType.IsNumericDataType Int32DataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType Int32DataType
instance Arrow.DataType.IsDataType Int32DataType
instance GObject.Object.IsObject Int32DataType

-- | Cast to `Int32DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt32DataType :: (MonadIO m, IsInt32DataType o) => o -> m Int32DataType
toInt32DataType = liftIO . unsafeCastTo Int32DataType

-- | A convenience alias for `Nothing` :: `Maybe` `Int32DataType`.
noInt32DataType :: Maybe Int32DataType
noInt32DataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveInt32DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt32DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt32DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt32DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveInt32DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt32DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt32DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt32DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt32DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt32DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt32DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt32DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt32DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt32DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt32DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt32DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt32DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveInt32DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt32DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt32DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveInt32DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt32DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveInt32DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt32DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt32DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt32DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt32DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt32DataTypeMethod t Int32DataType, O.MethodInfo info Int32DataType p) => O.IsLabelProxy t (Int32DataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveInt32DataTypeMethod t Int32DataType, O.MethodInfo info Int32DataType p) => O.IsLabel t (Int32DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Int32DataType
type instance O.AttributeList Int32DataType = Int32DataTypeAttributeList
type Int32DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Int32DataType = Int32DataTypeSignalList
type Int32DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int32DataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Int32DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int32_data_type_new" garrow_int32_data_type_new :: 
    IO (Ptr Int32DataType)

{- |
/No description available in the introspection data./
-}
int32DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Int32DataType
    {- ^ __Returns:__ The newly created 32-bit integer data type. -}
int32DataTypeNew  = liftIO $ do
    result <- garrow_int32_data_type_new
    checkUnexpectedReturnNULL "int32DataTypeNew" result
    result' <- (wrapObject Int32DataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


