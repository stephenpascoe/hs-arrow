

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::ListBuilder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.ListArrayBuilder
    ( 

-- * Exported types
    ListArrayBuilder(..)                    ,
    IsListArrayBuilder                      ,
    toListArrayBuilder                      ,
    noListArrayBuilder                      ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    ListArrayBuilderAppendMethodInfo        ,
#endif
    listArrayBuilderAppend                  ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    ListArrayBuilderAppendNullMethodInfo    ,
#endif
    listArrayBuilderAppendNull              ,


-- ** getValueBuilder #method:getValueBuilder#

#if ENABLE_OVERLOADING
    ListArrayBuilderGetValueBuilderMethodInfo,
#endif
    listArrayBuilderGetValueBuilder         ,


-- ** new #method:new#

    listArrayBuilderNew                     ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.ArrayBuilder as Arrow.ArrayBuilder
import {-# SOURCE #-} qualified GI.Arrow.Objects.ListDataType as Arrow.ListDataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype ListArrayBuilder = ListArrayBuilder (ManagedPtr ListArrayBuilder)
foreign import ccall "garrow_list_array_builder_get_type"
    c_garrow_list_array_builder_get_type :: IO GType

instance GObject ListArrayBuilder where
    gobjectType _ = c_garrow_list_array_builder_get_type
    

-- | Type class for types which can be safely cast to `ListArrayBuilder`, for instance with `toListArrayBuilder`.
class GObject o => IsListArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError ListArrayBuilder a) =>
    IsListArrayBuilder a
#endif
instance IsListArrayBuilder ListArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder ListArrayBuilder
instance GObject.Object.IsObject ListArrayBuilder

-- | Cast to `ListArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toListArrayBuilder :: (MonadIO m, IsListArrayBuilder o) => o -> m ListArrayBuilder
toListArrayBuilder = liftIO . unsafeCastTo ListArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `ListArrayBuilder`.
noListArrayBuilder :: Maybe ListArrayBuilder
noListArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveListArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveListArrayBuilderMethod "append" o = ListArrayBuilderAppendMethodInfo
    ResolveListArrayBuilderMethod "appendNull" o = ListArrayBuilderAppendNullMethodInfo
    ResolveListArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveListArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveListArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveListArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveListArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveListArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveListArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveListArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveListArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveListArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveListArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveListArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveListArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveListArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveListArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveListArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveListArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveListArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveListArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveListArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveListArrayBuilderMethod "getValueBuilder" o = ListArrayBuilderGetValueBuilderMethodInfo
    ResolveListArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveListArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveListArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveListArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveListArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveListArrayBuilderMethod t ListArrayBuilder, O.MethodInfo info ListArrayBuilder p) => O.IsLabelProxy t (ListArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveListArrayBuilderMethod t ListArrayBuilder, O.MethodInfo info ListArrayBuilder p) => O.IsLabel t (ListArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList ListArrayBuilder
type instance O.AttributeList ListArrayBuilder = ListArrayBuilderAttributeList
type ListArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList ListArrayBuilder = ListArrayBuilderSignalList
type ListArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method ListArrayBuilder::new
-- method type : Constructor
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "ListDataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowListDataType for value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "ListArrayBuilder"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_list_array_builder_new" garrow_list_array_builder_new :: 
    Ptr Arrow.ListDataType.ListDataType ->  -- data_type : TInterface (Name {namespace = "Arrow", name = "ListDataType"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr ListArrayBuilder)

{- |
/No description available in the introspection data./
-}
listArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.ListDataType.IsListDataType a) =>
    a
    {- ^ /@dataType@/: A 'GI.Arrow.Objects.ListDataType.ListDataType' for value. -}
    -> m ListArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.ListArrayBuilder.ListArrayBuilder'. /(Can throw 'Data.GI.Base.GError.GError')/ -}
listArrayBuilderNew dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    onException (do
        result <- propagateGError $ garrow_list_array_builder_new dataType'
        checkUnexpectedReturnNULL "listArrayBuilderNew" result
        result' <- (wrapObject ListArrayBuilder) result
        touchManagedPtr dataType
        return result'
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
#endif

-- method ListArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "ListArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowListArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_list_array_builder_append" garrow_list_array_builder_append :: 
    Ptr ListArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "ListArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
listArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsListArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.ListArrayBuilder.ListArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
listArrayBuilderAppend builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_list_array_builder_append builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data ListArrayBuilderAppendMethodInfo
instance (signature ~ (m ()), MonadIO m, IsListArrayBuilder a) => O.MethodInfo ListArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = listArrayBuilderAppend

#endif

-- method ListArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "ListArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowListArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_list_array_builder_append_null" garrow_list_array_builder_append_null :: 
    Ptr ListArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "ListArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
listArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsListArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.ListArrayBuilder.ListArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
listArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_list_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data ListArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsListArrayBuilder a) => O.MethodInfo ListArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = listArrayBuilderAppendNull

#endif

-- method ListArrayBuilder::get_value_builder
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "ListArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowListArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_list_array_builder_get_value_builder" garrow_list_array_builder_get_value_builder :: 
    Ptr ListArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "ListArrayBuilder"})
    IO (Ptr Arrow.ArrayBuilder.ArrayBuilder)

{- |
/No description available in the introspection data./
-}
listArrayBuilderGetValueBuilder ::
    (B.CallStack.HasCallStack, MonadIO m, IsListArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.ListArrayBuilder.ListArrayBuilder'. -}
    -> m Arrow.ArrayBuilder.ArrayBuilder
    {- ^ __Returns:__ The 'GI.Arrow.Objects.ArrayBuilder.ArrayBuilder' for values. -}
listArrayBuilderGetValueBuilder builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_list_array_builder_get_value_builder builder'
    checkUnexpectedReturnNULL "listArrayBuilderGetValueBuilder" result
    result' <- (newObject Arrow.ArrayBuilder.ArrayBuilder) result
    touchManagedPtr builder
    return result'

#if ENABLE_OVERLOADING
data ListArrayBuilderGetValueBuilderMethodInfo
instance (signature ~ (m Arrow.ArrayBuilder.ArrayBuilder), MonadIO m, IsListArrayBuilder a) => O.MethodInfo ListArrayBuilderGetValueBuilderMethodInfo a signature where
    overloadedMethod _ = listArrayBuilderGetValueBuilder

#endif


