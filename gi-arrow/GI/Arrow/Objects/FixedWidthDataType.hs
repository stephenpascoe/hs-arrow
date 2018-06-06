

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.FixedWidthDataType
    ( 

-- * Exported types
    FixedWidthDataType(..)                  ,
    IsFixedWidthDataType                    ,
    toFixedWidthDataType                    ,
    noFixedWidthDataType                    ,


 -- * Methods
-- ** getBitWidth #method:getBitWidth#

#if ENABLE_OVERLOADING
    FixedWidthDataTypeGetBitWidthMethodInfo ,
#endif
    fixedWidthDataTypeGetBitWidth           ,




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
newtype FixedWidthDataType = FixedWidthDataType (ManagedPtr FixedWidthDataType)
foreign import ccall "garrow_fixed_width_data_type_get_type"
    c_garrow_fixed_width_data_type_get_type :: IO GType

instance GObject FixedWidthDataType where
    gobjectType _ = c_garrow_fixed_width_data_type_get_type
    

-- | Type class for types which can be safely cast to `FixedWidthDataType`, for instance with `toFixedWidthDataType`.
class GObject o => IsFixedWidthDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError FixedWidthDataType a) =>
    IsFixedWidthDataType a
#endif
instance IsFixedWidthDataType FixedWidthDataType
instance Arrow.DataType.IsDataType FixedWidthDataType
instance GObject.Object.IsObject FixedWidthDataType

-- | Cast to `FixedWidthDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFixedWidthDataType :: (MonadIO m, IsFixedWidthDataType o) => o -> m FixedWidthDataType
toFixedWidthDataType = liftIO . unsafeCastTo FixedWidthDataType

-- | A convenience alias for `Nothing` :: `Maybe` `FixedWidthDataType`.
noFixedWidthDataType :: Maybe FixedWidthDataType
noFixedWidthDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveFixedWidthDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveFixedWidthDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFixedWidthDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFixedWidthDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveFixedWidthDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFixedWidthDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFixedWidthDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFixedWidthDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFixedWidthDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFixedWidthDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFixedWidthDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFixedWidthDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFixedWidthDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFixedWidthDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFixedWidthDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFixedWidthDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFixedWidthDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveFixedWidthDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFixedWidthDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFixedWidthDataTypeMethod "getBitWidth" o = FixedWidthDataTypeGetBitWidthMethodInfo
    ResolveFixedWidthDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFixedWidthDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveFixedWidthDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFixedWidthDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFixedWidthDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFixedWidthDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFixedWidthDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFixedWidthDataTypeMethod t FixedWidthDataType, O.MethodInfo info FixedWidthDataType p) => O.IsLabelProxy t (FixedWidthDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveFixedWidthDataTypeMethod t FixedWidthDataType, O.MethodInfo info FixedWidthDataType p) => O.IsLabel t (FixedWidthDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList FixedWidthDataType
type instance O.AttributeList FixedWidthDataType = FixedWidthDataTypeAttributeList
type FixedWidthDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList FixedWidthDataType = FixedWidthDataTypeSignalList
type FixedWidthDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FixedWidthDataType::get_bit_width
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "FixedWidthDataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Nothing, sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_fixed_width_data_type_get_bit_width" garrow_fixed_width_data_type_get_bit_width :: 
    Ptr FixedWidthDataType ->               -- data_type : TInterface (Name {namespace = "Arrow", name = "FixedWidthDataType"})
    IO Int32

{- |
/No description available in the introspection data./
-}
fixedWidthDataTypeGetBitWidth ::
    (B.CallStack.HasCallStack, MonadIO m, IsFixedWidthDataType a) =>
    a
    -> m Int32
fixedWidthDataTypeGetBitWidth dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_fixed_width_data_type_get_bit_width dataType'
    touchManagedPtr dataType
    return result

#if ENABLE_OVERLOADING
data FixedWidthDataTypeGetBitWidthMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsFixedWidthDataType a) => O.MethodInfo FixedWidthDataTypeGetBitWidthMethodInfo a signature where
    overloadedMethod _ = fixedWidthDataTypeGetBitWidth

#endif


