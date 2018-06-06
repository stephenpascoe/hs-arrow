

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.DoubleDataType
    ( 

-- * Exported types
    DoubleDataType(..)                      ,
    IsDoubleDataType                        ,
    toDoubleDataType                        ,
    noDoubleDataType                        ,


 -- * Methods
-- ** new #method:new#

    doubleDataTypeNew                       ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.FloatingPointDataType as Arrow.FloatingPointDataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.NumericDataType as Arrow.NumericDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype DoubleDataType = DoubleDataType (ManagedPtr DoubleDataType)
foreign import ccall "garrow_double_data_type_get_type"
    c_garrow_double_data_type_get_type :: IO GType

instance GObject DoubleDataType where
    gobjectType _ = c_garrow_double_data_type_get_type
    

-- | Type class for types which can be safely cast to `DoubleDataType`, for instance with `toDoubleDataType`.
class GObject o => IsDoubleDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError DoubleDataType a) =>
    IsDoubleDataType a
#endif
instance IsDoubleDataType DoubleDataType
instance Arrow.FloatingPointDataType.IsFloatingPointDataType DoubleDataType
instance Arrow.NumericDataType.IsNumericDataType DoubleDataType
instance Arrow.FixedWidthDataType.IsFixedWidthDataType DoubleDataType
instance Arrow.DataType.IsDataType DoubleDataType
instance GObject.Object.IsObject DoubleDataType

-- | Cast to `DoubleDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDoubleDataType :: (MonadIO m, IsDoubleDataType o) => o -> m DoubleDataType
toDoubleDataType = liftIO . unsafeCastTo DoubleDataType

-- | A convenience alias for `Nothing` :: `Maybe` `DoubleDataType`.
noDoubleDataType :: Maybe DoubleDataType
noDoubleDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveDoubleDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveDoubleDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDoubleDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDoubleDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveDoubleDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDoubleDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDoubleDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDoubleDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDoubleDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDoubleDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDoubleDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDoubleDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDoubleDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDoubleDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDoubleDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDoubleDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDoubleDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveDoubleDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDoubleDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDoubleDataTypeMethod "getBitWidth" o = Arrow.FixedWidthDataType.FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveDoubleDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDoubleDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveDoubleDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDoubleDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDoubleDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDoubleDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDoubleDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDoubleDataTypeMethod t DoubleDataType, O.MethodInfo info DoubleDataType p) => O.IsLabelProxy t (DoubleDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveDoubleDataTypeMethod t DoubleDataType, O.MethodInfo info DoubleDataType p) => O.IsLabel t (DoubleDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList DoubleDataType
type instance O.AttributeList DoubleDataType = DoubleDataTypeAttributeList
type DoubleDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList DoubleDataType = DoubleDataTypeSignalList
type DoubleDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DoubleDataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DoubleDataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_double_data_type_new" garrow_double_data_type_new :: 
    IO (Ptr DoubleDataType)

{- |
/No description available in the introspection data./
-}
doubleDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m DoubleDataType
    {- ^ __Returns:__ The newly created 64-bit floating point data type. -}
doubleDataTypeNew  = liftIO $ do
    result <- garrow_double_data_type_new
    checkUnexpectedReturnNULL "doubleDataTypeNew" result
    result' <- (wrapObject DoubleDataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


