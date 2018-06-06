

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Int16DataType
    ( 

-- * Exported types
    Int16DataType(..)                       ,
    IsInt16DataType                         ,
    toInt16DataType                         ,
    noInt16DataType                         ,


 -- * Methods
-- ** new #method:new#

    int16DataTypeNew                        ,




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
newtype Int16DataType = Int16DataType (ManagedPtr Int16DataType)
foreign import ccall "garrow_int16_data_type_get_type"
    c_garrow_int16_data_type_get_type :: IO GType

instance GObject Int16DataType where
    gobjectType _ = c_garrow_int16_data_type_get_type
    

-- | Type class for types which can be safely cast to `Int16DataType`, for instance with `toInt16DataType`.
class GObject o => IsInt16DataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Int16DataType a) =>
    IsInt16DataType a
#endif
instance IsInt16DataType Int16DataType
instance Arrow.IntegerDataType.IsIntegerDataType Int16DataType
instance Arrow.NumericDataType.IsNumericDataType Int16DataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType Int16DataType
instance Arrow.DataType.IsDataType Int16DataType
instance GObject.Object.IsObject Int16DataType

-- | Cast to `Int16DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt16DataType :: (MonadIO m, IsInt16DataType o) => o -> m Int16DataType
toInt16DataType = liftIO . unsafeCastTo Int16DataType

-- | A convenience alias for `Nothing` :: `Maybe` `Int16DataType`.
noInt16DataType :: Maybe Int16DataType
noInt16DataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveInt16DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt16DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt16DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt16DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveInt16DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt16DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt16DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt16DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt16DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt16DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt16DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt16DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt16DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt16DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt16DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt16DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt16DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveInt16DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt16DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt16DataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveInt16DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt16DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveInt16DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt16DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt16DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt16DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt16DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt16DataTypeMethod t Int16DataType, O.MethodInfo info Int16DataType p) => O.IsLabelProxy t (Int16DataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveInt16DataTypeMethod t Int16DataType, O.MethodInfo info Int16DataType p) => O.IsLabel t (Int16DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Int16DataType
type instance O.AttributeList Int16DataType = Int16DataTypeAttributeList
type Int16DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Int16DataType = Int16DataTypeSignalList
type Int16DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int16DataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Int16DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int16_data_type_new" garrow_int16_data_type_new :: 
    IO (Ptr Int16DataType)

{- |
/No description available in the introspection data./
-}
int16DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Int16DataType
    {- ^ __Returns:__ The newly created 16-bit integer data type. -}
int16DataTypeNew  = liftIO $ do
    result <- garrow_int16_data_type_new
    checkUnexpectedReturnNULL "int16DataTypeNew" result
    result' <- (wrapObject Int16DataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


