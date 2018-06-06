

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Int64DataType
    ( 

-- * Exported types
    Int64DataType(..)                       ,
    IsInt64DataType                         ,
    toInt64DataType                         ,
    noInt64DataType                         ,


 -- * Methods
-- ** new #method:new#

    int64DataTypeNew                        ,




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
newtype Int64DataType = Int64DataType (ManagedPtr Int64DataType)
foreign import ccall "garrow_int64_data_type_get_type"
    c_garrow_int64_data_type_get_type :: IO GType

instance GObject Int64DataType where
    gobjectType _ = c_garrow_int64_data_type_get_type
    

-- | Type class for types which can be safely cast to `Int64DataType`, for instance with `toInt64DataType`.
class GObject o => IsInt64DataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Int64DataType a) =>
    IsInt64DataType a
#endif
instance IsInt64DataType Int64DataType
instance Arrow.IntegerDataType.IsIntegerDataType Int64DataType
instance Arrow.NumericDataType.IsNumericDataType Int64DataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType Int64DataType
instance Arrow.DataType.IsDataType Int64DataType
instance GObject.Object.IsObject Int64DataType

-- | Cast to `Int64DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt64DataType :: (MonadIO m, IsInt64DataType o) => o -> m Int64DataType
toInt64DataType = liftIO . unsafeCastTo Int64DataType

-- | A convenience alias for `Nothing` :: `Maybe` `Int64DataType`.
noInt64DataType :: Maybe Int64DataType
noInt64DataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveInt64DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt64DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt64DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt64DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveInt64DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt64DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt64DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt64DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt64DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt64DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt64DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt64DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt64DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt64DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt64DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt64DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt64DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveInt64DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt64DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt64DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveInt64DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt64DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveInt64DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt64DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt64DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt64DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt64DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt64DataTypeMethod t Int64DataType, O.MethodInfo info Int64DataType p) => O.IsLabelProxy t (Int64DataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveInt64DataTypeMethod t Int64DataType, O.MethodInfo info Int64DataType p) => O.IsLabel t (Int64DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Int64DataType
type instance O.AttributeList Int64DataType = Int64DataTypeAttributeList
type Int64DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Int64DataType = Int64DataTypeSignalList
type Int64DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int64DataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Int64DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int64_data_type_new" garrow_int64_data_type_new :: 
    IO (Ptr Int64DataType)

{- |
/No description available in the introspection data./
-}
int64DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Int64DataType
    {- ^ __Returns:__ The newly created 64-bit integer data type. -}
int64DataTypeNew  = liftIO $ do
    result <- garrow_int64_data_type_new
    checkUnexpectedReturnNULL "int64DataTypeNew" result
    result' <- (wrapObject Int64DataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


