

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::ipc::RecordBatchWriter@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.RecordBatchWriter
    ( 

-- * Exported types
    RecordBatchWriter(..)                   ,
    IsRecordBatchWriter                     ,
    toRecordBatchWriter                     ,
    noRecordBatchWriter                     ,


 -- * Methods
-- ** close #method:close#

#if ENABLE_OVERLOADING
    RecordBatchWriterCloseMethodInfo        ,
#endif
    recordBatchWriterClose                  ,


-- ** writeRecordBatch #method:writeRecordBatch#

#if ENABLE_OVERLOADING
    RecordBatchWriterWriteRecordBatchMethodInfo,
#endif
    recordBatchWriterWriteRecordBatch       ,


-- ** writeTable #method:writeTable#

#if ENABLE_OVERLOADING
    RecordBatchWriterWriteTableMethodInfo   ,
#endif
    recordBatchWriterWriteTable             ,




 -- * Properties
-- ** recordBatchWriter #attr:recordBatchWriter#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    RecordBatchWriterRecordBatchWriterPropertyInfo,
#endif
    constructRecordBatchWriterRecordBatchWriter,
#if ENABLE_OVERLOADING
    recordBatchWriterRecordBatchWriter      ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatch as Arrow.RecordBatch
import {-# SOURCE #-} qualified GI.Arrow.Objects.Table as Arrow.Table
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatchWriter = RecordBatchWriter (ManagedPtr RecordBatchWriter)
foreign import ccall "garrow_record_batch_writer_get_type"
    c_garrow_record_batch_writer_get_type :: IO GType

instance GObject RecordBatchWriter where
    gobjectType _ = c_garrow_record_batch_writer_get_type
    

-- | Type class for types which can be safely cast to `RecordBatchWriter`, for instance with `toRecordBatchWriter`.
class GObject o => IsRecordBatchWriter o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError RecordBatchWriter a) =>
    IsRecordBatchWriter a
#endif
instance IsRecordBatchWriter RecordBatchWriter
instance GObject.Object.IsObject RecordBatchWriter

-- | Cast to `RecordBatchWriter`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatchWriter :: (MonadIO m, IsRecordBatchWriter o) => o -> m RecordBatchWriter
toRecordBatchWriter = liftIO . unsafeCastTo RecordBatchWriter

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatchWriter`.
noRecordBatchWriter :: Maybe RecordBatchWriter
noRecordBatchWriter = Nothing

#if ENABLE_OVERLOADING
type family ResolveRecordBatchWriterMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchWriterMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchWriterMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchWriterMethod "close" o = RecordBatchWriterCloseMethodInfo
    ResolveRecordBatchWriterMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchWriterMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchWriterMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchWriterMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchWriterMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchWriterMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchWriterMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchWriterMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchWriterMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchWriterMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchWriterMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchWriterMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchWriterMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchWriterMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchWriterMethod "writeRecordBatch" o = RecordBatchWriterWriteRecordBatchMethodInfo
    ResolveRecordBatchWriterMethod "writeTable" o = RecordBatchWriterWriteTableMethodInfo
    ResolveRecordBatchWriterMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchWriterMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchWriterMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchWriterMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchWriterMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchWriterMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchWriterMethod t RecordBatchWriter, O.MethodInfo info RecordBatchWriter p) => O.IsLabelProxy t (RecordBatchWriter -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveRecordBatchWriterMethod t RecordBatchWriter, O.MethodInfo info RecordBatchWriter p) => O.IsLabel t (RecordBatchWriter -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "record-batch-writer"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@record-batch-writer@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructRecordBatchWriterRecordBatchWriter :: (IsRecordBatchWriter o) => Ptr () -> IO (GValueConstruct o)
constructRecordBatchWriterRecordBatchWriter val = constructObjectPropertyPtr "record-batch-writer" val

#if ENABLE_OVERLOADING
data RecordBatchWriterRecordBatchWriterPropertyInfo
instance AttrInfo RecordBatchWriterRecordBatchWriterPropertyInfo where
    type AttrAllowedOps RecordBatchWriterRecordBatchWriterPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint RecordBatchWriterRecordBatchWriterPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint RecordBatchWriterRecordBatchWriterPropertyInfo = IsRecordBatchWriter
    type AttrGetType RecordBatchWriterRecordBatchWriterPropertyInfo = ()
    type AttrLabel RecordBatchWriterRecordBatchWriterPropertyInfo = "record-batch-writer"
    type AttrOrigin RecordBatchWriterRecordBatchWriterPropertyInfo = RecordBatchWriter
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructRecordBatchWriterRecordBatchWriter
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList RecordBatchWriter
type instance O.AttributeList RecordBatchWriter = RecordBatchWriterAttributeList
type RecordBatchWriterAttributeList = ('[ '("recordBatchWriter", RecordBatchWriterRecordBatchWriterPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
recordBatchWriterRecordBatchWriter :: AttrLabelProxy "recordBatchWriter"
recordBatchWriterRecordBatchWriter = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList RecordBatchWriter = RecordBatchWriterSignalList
type RecordBatchWriterSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatchWriter::close
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "writer", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchWriter"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchWriter.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_writer_close" garrow_record_batch_writer_close :: 
    Ptr RecordBatchWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "RecordBatchWriter"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
recordBatchWriterClose ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchWriter a) =>
    a
    {- ^ /@writer@/: A 'GI.Arrow.Objects.RecordBatchWriter.RecordBatchWriter'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchWriterClose writer = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    onException (do
        _ <- propagateGError $ garrow_record_batch_writer_close writer'
        touchManagedPtr writer
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data RecordBatchWriterCloseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsRecordBatchWriter a) => O.MethodInfo RecordBatchWriterCloseMethodInfo a signature where
    overloadedMethod _ = recordBatchWriterClose

#endif

-- method RecordBatchWriter::write_record_batch
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "writer", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchWriter"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchWriter.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The record batch to be written.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_writer_write_record_batch" garrow_record_batch_writer_write_record_batch :: 
    Ptr RecordBatchWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "RecordBatchWriter"})
    Ptr Arrow.RecordBatch.RecordBatch ->    -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
recordBatchWriterWriteRecordBatch ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchWriter a, Arrow.RecordBatch.IsRecordBatch b) =>
    a
    {- ^ /@writer@/: A 'GI.Arrow.Objects.RecordBatchWriter.RecordBatchWriter'. -}
    -> b
    {- ^ /@recordBatch@/: The record batch to be written. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchWriterWriteRecordBatch writer recordBatch = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    onException (do
        _ <- propagateGError $ garrow_record_batch_writer_write_record_batch writer' recordBatch'
        touchManagedPtr writer
        touchManagedPtr recordBatch
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data RecordBatchWriterWriteRecordBatchMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsRecordBatchWriter a, Arrow.RecordBatch.IsRecordBatch b) => O.MethodInfo RecordBatchWriterWriteRecordBatchMethodInfo a signature where
    overloadedMethod _ = recordBatchWriterWriteRecordBatch

#endif

-- method RecordBatchWriter::write_table
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "writer", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchWriter"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchWriter.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "table", argType = TInterface (Name {namespace = "Arrow", name = "Table"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The table to be written.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_writer_write_table" garrow_record_batch_writer_write_table :: 
    Ptr RecordBatchWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "RecordBatchWriter"})
    Ptr Arrow.Table.Table ->                -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.8.0
-}
recordBatchWriterWriteTable ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchWriter a, Arrow.Table.IsTable b) =>
    a
    {- ^ /@writer@/: A 'GI.Arrow.Objects.RecordBatchWriter.RecordBatchWriter'. -}
    -> b
    {- ^ /@table@/: The table to be written. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchWriterWriteTable writer table = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    table' <- unsafeManagedPtrCastPtr table
    onException (do
        _ <- propagateGError $ garrow_record_batch_writer_write_table writer' table'
        touchManagedPtr writer
        touchManagedPtr table
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data RecordBatchWriterWriteTableMethodInfo
instance (signature ~ (b -> m ()), MonadIO m, IsRecordBatchWriter a, Arrow.Table.IsTable b) => O.MethodInfo RecordBatchWriterWriteTableMethodInfo a signature where
    overloadedMethod _ = recordBatchWriterWriteTable

#endif


