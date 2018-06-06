

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::ListType@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.ListDataType
    ( 

-- * Exported types
    ListDataType(..)                        ,
    IsListDataType                          ,
    toListDataType                          ,
    noListDataType                          ,


 -- * Methods
-- ** getValueField #method:getValueField#

#if ENABLE_OVERLOADING
    ListDataTypeGetValueFieldMethodInfo     ,
#endif
    listDataTypeGetValueField               ,


-- ** new #method:new#

    listDataTypeNew                         ,




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
newtype ListDataType = ListDataType (ManagedPtr ListDataType)
foreign import ccall "garrow_list_data_type_get_type"
    c_garrow_list_data_type_get_type :: IO GType

instance GObject ListDataType where
    gobjectType _ = c_garrow_list_data_type_get_type
    

-- | Type class for types which can be safely cast to `ListDataType`, for instance with `toListDataType`.
class GObject o => IsListDataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError ListDataType a) =>
    IsListDataType a
#endif
instance IsListDataType ListDataType
instance Arrow.DataType.IsDataType ListDataType
instance GObject.Object.IsObject ListDataType

-- | Cast to `ListDataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toListDataType :: (MonadIO m, IsListDataType o) => o -> m ListDataType
toListDataType = liftIO . unsafeCastTo ListDataType

-- | A convenience alias for `Nothing` :: `Maybe` `ListDataType`.
noListDataType :: Maybe ListDataType
noListDataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveListDataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveListDataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveListDataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveListDataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveListDataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveListDataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveListDataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveListDataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveListDataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveListDataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveListDataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveListDataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveListDataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveListDataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveListDataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveListDataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveListDataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveListDataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveListDataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveListDataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveListDataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveListDataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveListDataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveListDataTypeMethod "getValueField" o = ListDataTypeGetValueFieldMethodInfo
    ResolveListDataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveListDataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveListDataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveListDataTypeMethod t ListDataType, O.MethodInfo info ListDataType p) => O.IsLabelProxy t (ListDataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveListDataTypeMethod t ListDataType, O.MethodInfo info ListDataType p) => O.IsLabel t (ListDataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList ListDataType
type instance O.AttributeList ListDataType = ListDataTypeAttributeList
type ListDataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList ListDataType = ListDataTypeSignalList
type ListDataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method ListDataType::new
-- method type : Constructor
-- Args : [Arg {argCName = "field", argType = TInterface (Name {namespace = "Arrow", name = "Field"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The field of elements", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "ListDataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_list_data_type_new" garrow_list_data_type_new :: 
    Ptr Arrow.Field.Field ->                -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    IO (Ptr ListDataType)

{- |
/No description available in the introspection data./
-}
listDataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a) =>
    a
    {- ^ /@field@/: The field of elements -}
    -> m ListDataType
    {- ^ __Returns:__ The newly created list data type. -}
listDataTypeNew field = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    result <- garrow_list_data_type_new field'
    checkUnexpectedReturnNULL "listDataTypeNew" result
    result' <- (wrapObject ListDataType) result
    touchManagedPtr field
    return result'

#if ENABLE_OVERLOADING
#endif

-- method ListDataType::get_value_field
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "list_data_type", argType = TInterface (Name {namespace = "Arrow", name = "ListDataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowListDataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Field"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_list_data_type_get_value_field" garrow_list_data_type_get_value_field :: 
    Ptr ListDataType ->                     -- list_data_type : TInterface (Name {namespace = "Arrow", name = "ListDataType"})
    IO (Ptr Arrow.Field.Field)

{- |
/No description available in the introspection data./
-}
listDataTypeGetValueField ::
    (B.CallStack.HasCallStack, MonadIO m, IsListDataType a) =>
    a
    {- ^ /@listDataType@/: A 'GI.Arrow.Objects.ListDataType.ListDataType'. -}
    -> m Arrow.Field.Field
    {- ^ __Returns:__ The field of value. -}
listDataTypeGetValueField listDataType = liftIO $ do
    listDataType' <- unsafeManagedPtrCastPtr listDataType
    result <- garrow_list_data_type_get_value_field listDataType'
    checkUnexpectedReturnNULL "listDataTypeGetValueField" result
    result' <- (wrapObject Arrow.Field.Field) result
    touchManagedPtr listDataType
    return result'

#if ENABLE_OVERLOADING
data ListDataTypeGetValueFieldMethodInfo
instance (signature ~ (m Arrow.Field.Field), MonadIO m, IsListDataType a) => O.MethodInfo ListDataTypeGetValueFieldMethodInfo a signature where
    overloadedMethod _ = listDataTypeGetValueField

#endif


