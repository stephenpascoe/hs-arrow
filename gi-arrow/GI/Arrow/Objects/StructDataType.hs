

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::StructType@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.StructDataType
    ( 

-- * Exported types
    StructDataType(..)                      ,
    IsStructDataType                        ,
    toStructDataType                        ,
    noStructDataType                        ,


 -- * Methods
-- ** new #method:new#

    structDataTypeNew                       ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Field as Arrow.Field
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype StructDataType = StructDataType (ManagedPtr StructDataType)
foreign import ccall "garrow_struct_data_type_get_type"
    c_garrow_struct_data_type_get_type :: IO GType

instance GObject StructDataType where
    gobjectType _ = c_garrow_struct_data_type_get_type
    

-- | Type class for types which can be safely cast to `StructDataType`, for instance with `toStructDataType`.
class GObject o => IsStructDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError StructDataType a) =>
    IsStructDataType a
#endif
instance IsStructDataType StructDataType
instance Arrow.DataType.IsDataType StructDataType
instance GObject.Object.IsObject StructDataType

-- | Cast to `StructDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStructDataType :: (MonadIO m, IsStructDataType o) => o -> m StructDataType
toStructDataType = liftIO . unsafeCastTo StructDataType

-- | A convenience alias for `Nothing` :: `Maybe` `StructDataType`.
noStructDataType :: Maybe StructDataType
noStructDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveStructDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveStructDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStructDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStructDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveStructDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStructDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStructDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStructDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStructDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStructDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStructDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStructDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStructDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStructDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStructDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStructDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStructDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveStructDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStructDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStructDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStructDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveStructDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStructDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStructDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStructDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStructDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStructDataTypeMethod t StructDataType, O.MethodInfo info StructDataType p) => O.IsLabelProxy t (StructDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveStructDataTypeMethod t StructDataType, O.MethodInfo info StructDataType p) => O.IsLabel t (StructDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList StructDataType
type instance O.AttributeList StructDataType = StructDataTypeAttributeList
type StructDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList StructDataType = StructDataTypeSignalList
type StructDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method StructDataType::new
-- method type : Constructor
-- Args : [Arg {argCName = "fields", argType = TGList (TInterface (Name {namespace = "Arrow", name = "Field"})), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The fields of the struct.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "StructDataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_struct_data_type_new" garrow_struct_data_type_new :: 
    Ptr (GList (Ptr Arrow.Field.Field)) ->  -- fields : TGList (TInterface (Name {namespace = "Arrow", name = "Field"}))
    IO (Ptr StructDataType)

{- |
/No description available in the introspection data./
-}
structDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a) =>
    [a]
    {- ^ /@fields@/: The fields of the struct. -}
    -> m StructDataType
    {- ^ __Returns:__ The newly created struct data type. -}
structDataTypeNew fields = liftIO $ do
    fields' <- mapM unsafeManagedPtrCastPtr fields
    fields'' <- packGList fields'
    result <- garrow_struct_data_type_new fields''
    checkUnexpectedReturnNULL "structDataTypeNew" result
    result' <- (wrapObject StructDataType) result
    mapM_ touchManagedPtr fields
    g_list_free fields''
    return result'

#if ENABLE_OVERLOADING
#endif


