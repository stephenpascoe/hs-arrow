

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.RecordBatchBuilder
    ( 

-- * Exported types
    RecordBatchBuilder(..)                  ,
    IsRecordBatchBuilder                    ,
    toRecordBatchBuilder                    ,
    noRecordBatchBuilder                    ,


 -- * Methods
-- ** flush #method:flush#

#if ENABLE_OVERLOADING
    RecordBatchBuilderFlushMethodInfo       ,
#endif
    recordBatchBuilderFlush                 ,


-- ** getField #method:getField#

#if ENABLE_OVERLOADING
    RecordBatchBuilderGetFieldMethodInfo    ,
#endif
    recordBatchBuilderGetField              ,


-- ** getInitialCapacity #method:getInitialCapacity#

#if ENABLE_OVERLOADING
    RecordBatchBuilderGetInitialCapacityMethodInfo,
#endif
    recordBatchBuilderGetInitialCapacity    ,


-- ** getNFields #method:getNFields#

#if ENABLE_OVERLOADING
    RecordBatchBuilderGetNFieldsMethodInfo  ,
#endif
    recordBatchBuilderGetNFields            ,


-- ** getSchema #method:getSchema#

#if ENABLE_OVERLOADING
    RecordBatchBuilderGetSchemaMethodInfo   ,
#endif
    recordBatchBuilderGetSchema             ,


-- ** new #method:new#

    recordBatchBuilderNew                   ,


-- ** setInitialCapacity #method:setInitialCapacity#

#if ENABLE_OVERLOADING
    RecordBatchBuilderSetInitialCapacityMethodInfo,
#endif
    recordBatchBuilderSetInitialCapacity    ,




 -- * Properties
-- ** recordBatchBuilder #attr:recordBatchBuilder#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    RecordBatchBuilderRecordBatchBuilderPropertyInfo,
#endif
    constructRecordBatchBuilderRecordBatchBuilder,
#if ENABLE_OVERLOADING
    recordBatchBuilderRecordBatchBuilder    ,
#endif




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatch as Arrow.RecordBatch
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatchBuilder = RecordBatchBuilder (ManagedPtr RecordBatchBuilder)
foreign import ccall "garrow_record_batch_builder_get_type"
    c_garrow_record_batch_builder_get_type :: IO GType

instance GObject RecordBatchBuilder where
    gobjectType _ = c_garrow_record_batch_builder_get_type
    

-- | Type class for types which can be safely cast to `RecordBatchBuilder`, for instance with `toRecordBatchBuilder`.
class GObject o => IsRecordBatchBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError RecordBatchBuilder a) =>
    IsRecordBatchBuilder a
#endif
instance IsRecordBatchBuilder RecordBatchBuilder
instance GObject.Object.IsObject RecordBatchBuilder

-- | Cast to `RecordBatchBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatchBuilder :: (MonadIO m, IsRecordBatchBuilder o) => o -> m RecordBatchBuilder
toRecordBatchBuilder = liftIO . unsafeCastTo RecordBatchBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatchBuilder`.
noRecordBatchBuilder :: Maybe RecordBatchBuilder
noRecordBatchBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveRecordBatchBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchBuilderMethod "flush" o = RecordBatchBuilderFlushMethodInfo
    ResolveRecordBatchBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchBuilderMethod "getField" o = RecordBatchBuilderGetFieldMethodInfo
    ResolveRecordBatchBuilderMethod "getInitialCapacity" o = RecordBatchBuilderGetInitialCapacityMethodInfo
    ResolveRecordBatchBuilderMethod "getNFields" o = RecordBatchBuilderGetNFieldsMethodInfo
    ResolveRecordBatchBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchBuilderMethod "getSchema" o = RecordBatchBuilderGetSchemaMethodInfo
    ResolveRecordBatchBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchBuilderMethod "setInitialCapacity" o = RecordBatchBuilderSetInitialCapacityMethodInfo
    ResolveRecordBatchBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchBuilderMethod t RecordBatchBuilder, O.MethodInfo info RecordBatchBuilder p) => O.IsLabelProxy t (RecordBatchBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveRecordBatchBuilderMethod t RecordBatchBuilder, O.MethodInfo info RecordBatchBuilder p) => O.IsLabel t (RecordBatchBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "record-batch-builder"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@record-batch-builder@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructRecordBatchBuilderRecordBatchBuilder :: (IsRecordBatchBuilder o) => Ptr () -> IO (GValueConstruct o)
constructRecordBatchBuilderRecordBatchBuilder val = constructObjectPropertyPtr "record-batch-builder" val

#if ENABLE_OVERLOADING
data RecordBatchBuilderRecordBatchBuilderPropertyInfo
instance AttrInfo RecordBatchBuilderRecordBatchBuilderPropertyInfo where
    type AttrAllowedOps RecordBatchBuilderRecordBatchBuilderPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint RecordBatchBuilderRecordBatchBuilderPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint RecordBatchBuilderRecordBatchBuilderPropertyInfo = IsRecordBatchBuilder
    type AttrGetType RecordBatchBuilderRecordBatchBuilderPropertyInfo = ()
    type AttrLabel RecordBatchBuilderRecordBatchBuilderPropertyInfo = "record-batch-builder"
    type AttrOrigin RecordBatchBuilderRecordBatchBuilderPropertyInfo = RecordBatchBuilder
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructRecordBatchBuilderRecordBatchBuilder
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList RecordBatchBuilder
type instance O.AttributeList RecordBatchBuilder = RecordBatchBuilderAttributeList
type RecordBatchBuilderAttributeList = ('[ '("recordBatchBuilder", RecordBatchBuilderRecordBatchBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
recordBatchBuilderRecordBatchBuilder :: AttrLabelProxy "recordBatchBuilder"
recordBatchBuilderRecordBatchBuilder = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList RecordBatchBuilder = RecordBatchBuilderSignalList
type RecordBatchBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatchBuilder::new
-- method type : Constructor
-- Args : [Arg {argCName = "schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSchema.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_new" garrow_record_batch_builder_new :: 
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr RecordBatchBuilder)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
recordBatchBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Schema.IsSchema a) =>
    a
    {- ^ /@schema@/: A 'GI.Arrow.Objects.Schema.Schema'. -}
    -> m RecordBatchBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder' on success,
  'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchBuilderNew schema = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    onException (do
        result <- propagateGError $ garrow_record_batch_builder_new schema'
        checkUnexpectedReturnNULL "recordBatchBuilderNew" result
        result' <- (wrapObject RecordBatchBuilder) result
        touchManagedPtr schema
        return result'
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
#endif

-- method RecordBatchBuilder::flush
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "RecordBatch"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_flush" garrow_record_batch_builder_flush :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.RecordBatch.RecordBatch)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
recordBatchBuilderFlush ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'. -}
    -> m Arrow.RecordBatch.RecordBatch
    {- ^ __Returns:__ The built 'GI.Arrow.Objects.RecordBatch.RecordBatch' on success,
  'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchBuilderFlush builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        result <- propagateGError $ garrow_record_batch_builder_flush builder'
        checkUnexpectedReturnNULL "recordBatchBuilderFlush" result
        result' <- (wrapObject Arrow.RecordBatch.RecordBatch) result
        touchManagedPtr builder
        return result'
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data RecordBatchBuilderFlushMethodInfo
instance (signature ~ (m Arrow.RecordBatch.RecordBatch), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderFlushMethodInfo a signature where
    overloadedMethod _ = recordBatchBuilderFlush

#endif

-- method RecordBatchBuilder::get_field
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The field index. If it's negative, index is counted backward\n  from the end of the fields. `-1` means the last field.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_get_field" garrow_record_batch_builder_get_field :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    Int32 ->                                -- i : TBasicType TInt
    IO (Ptr Arrow.ArrayBuilder.ArrayBuilder)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
recordBatchBuilderGetField ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'. -}
    -> Int32
    {- ^ /@i@/: The field index. If it\'s negative, index is counted backward
  from the end of the fields. @-1@ means the last field. -}
    -> m (Maybe Arrow.ArrayBuilder.ArrayBuilder)
    {- ^ __Returns:__ The 'GI.Arrow.Objects.ArrayBuilder.ArrayBuilder' for
  the @i@-th field on success, 'Nothing' on out of index. -}
recordBatchBuilderGetField builder i = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_record_batch_builder_get_field builder' i
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (newObject Arrow.ArrayBuilder.ArrayBuilder) result'
        return result''
    touchManagedPtr builder
    return maybeResult

#if ENABLE_OVERLOADING
data RecordBatchBuilderGetFieldMethodInfo
instance (signature ~ (Int32 -> m (Maybe Arrow.ArrayBuilder.ArrayBuilder)), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderGetFieldMethodInfo a signature where
    overloadedMethod _ = recordBatchBuilderGetField

#endif

-- method RecordBatchBuilder::get_initial_capacity
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_get_initial_capacity" garrow_record_batch_builder_get_initial_capacity :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    IO Int64

{- |
/No description available in the introspection data./

@since 0.8.0
-}
recordBatchBuilderGetInitialCapacity ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'. -}
    -> m Int64
    {- ^ __Returns:__ The initial capacity for array builders. -}
recordBatchBuilderGetInitialCapacity builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_record_batch_builder_get_initial_capacity builder'
    touchManagedPtr builder
    return result

#if ENABLE_OVERLOADING
data RecordBatchBuilderGetInitialCapacityMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderGetInitialCapacityMethodInfo a signature where
    overloadedMethod _ = recordBatchBuilderGetInitialCapacity

#endif

-- method RecordBatchBuilder::get_n_fields
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_get_n_fields" garrow_record_batch_builder_get_n_fields :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    IO Int32

{- |
/No description available in the introspection data./

@since 0.8.0
-}
recordBatchBuilderGetNFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'. -}
    -> m Int32
    {- ^ __Returns:__ The number of fields. -}
recordBatchBuilderGetNFields builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_record_batch_builder_get_n_fields builder'
    touchManagedPtr builder
    return result

#if ENABLE_OVERLOADING
data RecordBatchBuilderGetNFieldsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderGetNFieldsMethodInfo a signature where
    overloadedMethod _ = recordBatchBuilderGetNFields

#endif

-- method RecordBatchBuilder::get_schema
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Schema"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_get_schema" garrow_record_batch_builder_get_schema :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    IO (Ptr Arrow.Schema.Schema)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
recordBatchBuilderGetSchema ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'. -}
    -> m Arrow.Schema.Schema
    {- ^ __Returns:__ The 'GI.Arrow.Objects.Schema.Schema' of the record batch builder. -}
recordBatchBuilderGetSchema builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_record_batch_builder_get_schema builder'
    checkUnexpectedReturnNULL "recordBatchBuilderGetSchema" result
    result' <- (wrapObject Arrow.Schema.Schema) result
    touchManagedPtr builder
    return result'

#if ENABLE_OVERLOADING
data RecordBatchBuilderGetSchemaMethodInfo
instance (signature ~ (m Arrow.Schema.Schema), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderGetSchemaMethodInfo a signature where
    overloadedMethod _ = recordBatchBuilderGetSchema

#endif

-- method RecordBatchBuilder::set_initial_capacity
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "capacity", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The new initial capacity for array builders.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_builder_set_initial_capacity" garrow_record_batch_builder_set_initial_capacity :: 
    Ptr RecordBatchBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "RecordBatchBuilder"})
    Int64 ->                                -- capacity : TBasicType TInt64
    IO ()

{- |
/No description available in the introspection data./

@since 0.8.0
-}
recordBatchBuilderSetInitialCapacity ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.RecordBatchBuilder.RecordBatchBuilder'. -}
    -> Int64
    {- ^ /@capacity@/: The new initial capacity for array builders. -}
    -> m ()
recordBatchBuilderSetInitialCapacity builder capacity = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    garrow_record_batch_builder_set_initial_capacity builder' capacity
    touchManagedPtr builder
    return ()

#if ENABLE_OVERLOADING
data RecordBatchBuilderSetInitialCapacityMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsRecordBatchBuilder a) => O.MethodInfo RecordBatchBuilderSetInitialCapacityMethodInfo a signature where
    overloadedMethod _ = recordBatchBuilderSetInitialCapacity

#endif


