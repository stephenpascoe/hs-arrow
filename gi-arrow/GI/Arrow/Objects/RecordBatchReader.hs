

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.RecordBatchReader
    ( 

-- * Exported types
    RecordBatchReader(..)                   ,
    IsRecordBatchReader                     ,
    toRecordBatchReader                     ,
    noRecordBatchReader                     ,


 -- * Methods
-- ** getNextRecordBatch #method:getNextRecordBatch#

#if ENABLE_OVERLOADING
    RecordBatchReaderGetNextRecordBatchMethodInfo,
#endif
    recordBatchReaderGetNextRecordBatch     ,


-- ** getSchema #method:getSchema#

#if ENABLE_OVERLOADING
    RecordBatchReaderGetSchemaMethodInfo    ,
#endif
    recordBatchReaderGetSchema              ,


-- ** readNext #method:readNext#

#if ENABLE_OVERLOADING
    RecordBatchReaderReadNextMethodInfo     ,
#endif
    recordBatchReaderReadNext               ,


-- ** readNextRecordBatch #method:readNextRecordBatch#

#if ENABLE_OVERLOADING
    RecordBatchReaderReadNextRecordBatchMethodInfo,
#endif
    recordBatchReaderReadNextRecordBatch    ,




 -- * Properties
-- ** recordBatchReader #attr:recordBatchReader#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    RecordBatchReaderRecordBatchReaderPropertyInfo,
#endif
    constructRecordBatchReaderRecordBatchReader,
#if ENABLE_OVERLOADING
    recordBatchReaderRecordBatchReader      ,
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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatchReader = RecordBatchReader (ManagedPtr RecordBatchReader)
foreign import ccall "garrow_record_batch_reader_get_type"
    c_garrow_record_batch_reader_get_type :: IO GType

instance GObject RecordBatchReader where
    gobjectType _ = c_garrow_record_batch_reader_get_type
    

-- | Type class for types which can be safely cast to `RecordBatchReader`, for instance with `toRecordBatchReader`.
class GObject o => IsRecordBatchReader o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError RecordBatchReader a) =>
    IsRecordBatchReader a
#endif
instance IsRecordBatchReader RecordBatchReader
instance GObject.Object.IsObject RecordBatchReader

-- | Cast to `RecordBatchReader`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatchReader :: (MonadIO m, IsRecordBatchReader o) => o -> m RecordBatchReader
toRecordBatchReader = liftIO . unsafeCastTo RecordBatchReader

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatchReader`.
noRecordBatchReader :: Maybe RecordBatchReader
noRecordBatchReader = Nothing

#if ENABLE_OVERLOADING
type family ResolveRecordBatchReaderMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchReaderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchReaderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchReaderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchReaderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchReaderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchReaderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchReaderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchReaderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchReaderMethod "readNext" o = RecordBatchReaderReadNextMethodInfo
    ResolveRecordBatchReaderMethod "readNextRecordBatch" o = RecordBatchReaderReadNextRecordBatchMethodInfo
    ResolveRecordBatchReaderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchReaderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchReaderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchReaderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchReaderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchReaderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchReaderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchReaderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchReaderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchReaderMethod "getNextRecordBatch" o = RecordBatchReaderGetNextRecordBatchMethodInfo
    ResolveRecordBatchReaderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchReaderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchReaderMethod "getSchema" o = RecordBatchReaderGetSchemaMethodInfo
    ResolveRecordBatchReaderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchReaderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchReaderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchReaderMethod t RecordBatchReader, O.MethodInfo info RecordBatchReader p) => O.IsLabelProxy t (RecordBatchReader -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveRecordBatchReaderMethod t RecordBatchReader, O.MethodInfo info RecordBatchReader p) => O.IsLabel t (RecordBatchReader -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "record-batch-reader"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@record-batch-reader@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructRecordBatchReaderRecordBatchReader :: (IsRecordBatchReader o) => Ptr () -> IO (GValueConstruct o)
constructRecordBatchReaderRecordBatchReader val = constructObjectPropertyPtr "record-batch-reader" val

#if ENABLE_OVERLOADING
data RecordBatchReaderRecordBatchReaderPropertyInfo
instance AttrInfo RecordBatchReaderRecordBatchReaderPropertyInfo where
    type AttrAllowedOps RecordBatchReaderRecordBatchReaderPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint RecordBatchReaderRecordBatchReaderPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint RecordBatchReaderRecordBatchReaderPropertyInfo = IsRecordBatchReader
    type AttrGetType RecordBatchReaderRecordBatchReaderPropertyInfo = ()
    type AttrLabel RecordBatchReaderRecordBatchReaderPropertyInfo = "record-batch-reader"
    type AttrOrigin RecordBatchReaderRecordBatchReaderPropertyInfo = RecordBatchReader
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructRecordBatchReaderRecordBatchReader
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList RecordBatchReader
type instance O.AttributeList RecordBatchReader = RecordBatchReaderAttributeList
type RecordBatchReaderAttributeList = ('[ '("recordBatchReader", RecordBatchReaderRecordBatchReaderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
recordBatchReaderRecordBatchReader :: AttrLabelProxy "recordBatchReader"
recordBatchReaderRecordBatchReader = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList RecordBatchReader = RecordBatchReaderSignalList
type RecordBatchReaderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatchReader::get_next_record_batch
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "RecordBatch"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_reader_get_next_record_batch" garrow_record_batch_reader_get_next_record_batch :: 
    Ptr RecordBatchReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "RecordBatchReader"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.RecordBatch.RecordBatch)

{-# DEPRECATED recordBatchReaderGetNextRecordBatch ["(Since version 0.5.0)","","  Use 'GI.Arrow.Objects.RecordBatchReader.recordBatchReaderReadNext' instead."] #-}
{- |
/No description available in the introspection data./

@since 0.4.0
-}
recordBatchReaderGetNextRecordBatch ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.RecordBatchReader.RecordBatchReader'. -}
    -> m (Maybe Arrow.RecordBatch.RecordBatch)
    {- ^ __Returns:__ 
  The next record batch in the stream or 'Nothing' on end of stream. /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchReaderGetNextRecordBatch reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_record_batch_reader_get_next_record_batch reader'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.RecordBatch.RecordBatch) result'
            return result''
        touchManagedPtr reader
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data RecordBatchReaderGetNextRecordBatchMethodInfo
instance (signature ~ (m (Maybe Arrow.RecordBatch.RecordBatch)), MonadIO m, IsRecordBatchReader a) => O.MethodInfo RecordBatchReaderGetNextRecordBatchMethodInfo a signature where
    overloadedMethod _ = recordBatchReaderGetNextRecordBatch

#endif

-- method RecordBatchReader::get_schema
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Schema"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_reader_get_schema" garrow_record_batch_reader_get_schema :: 
    Ptr RecordBatchReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "RecordBatchReader"})
    IO (Ptr Arrow.Schema.Schema)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
recordBatchReaderGetSchema ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.RecordBatchReader.RecordBatchReader'. -}
    -> m Arrow.Schema.Schema
    {- ^ __Returns:__ The schema in the stream. -}
recordBatchReaderGetSchema reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_record_batch_reader_get_schema reader'
    checkUnexpectedReturnNULL "recordBatchReaderGetSchema" result
    result' <- (wrapObject Arrow.Schema.Schema) result
    touchManagedPtr reader
    return result'

#if ENABLE_OVERLOADING
data RecordBatchReaderGetSchemaMethodInfo
instance (signature ~ (m Arrow.Schema.Schema), MonadIO m, IsRecordBatchReader a) => O.MethodInfo RecordBatchReaderGetSchemaMethodInfo a signature where
    overloadedMethod _ = recordBatchReaderGetSchema

#endif

-- method RecordBatchReader::read_next
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "RecordBatch"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_reader_read_next" garrow_record_batch_reader_read_next :: 
    Ptr RecordBatchReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "RecordBatchReader"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.RecordBatch.RecordBatch)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
recordBatchReaderReadNext ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.RecordBatchReader.RecordBatchReader'. -}
    -> m (Maybe Arrow.RecordBatch.RecordBatch)
    {- ^ __Returns:__ 
  The next record batch in the stream or 'Nothing' on end of stream. /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchReaderReadNext reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_record_batch_reader_read_next reader'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.RecordBatch.RecordBatch) result'
            return result''
        touchManagedPtr reader
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data RecordBatchReaderReadNextMethodInfo
instance (signature ~ (m (Maybe Arrow.RecordBatch.RecordBatch)), MonadIO m, IsRecordBatchReader a) => O.MethodInfo RecordBatchReaderReadNextMethodInfo a signature where
    overloadedMethod _ = recordBatchReaderReadNext

#endif

-- method RecordBatchReader::read_next_record_batch
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatchReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatchReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "RecordBatch"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_reader_read_next_record_batch" garrow_record_batch_reader_read_next_record_batch :: 
    Ptr RecordBatchReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "RecordBatchReader"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.RecordBatch.RecordBatch)

{-# DEPRECATED recordBatchReaderReadNextRecordBatch ["(Since version 0.8.0)","","  Use 'GI.Arrow.Objects.RecordBatchReader.recordBatchReaderReadNext' instead."] #-}
{- |
/No description available in the introspection data./

@since 0.5.0
-}
recordBatchReaderReadNextRecordBatch ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatchReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.RecordBatchReader.RecordBatchReader'. -}
    -> m (Maybe Arrow.RecordBatch.RecordBatch)
    {- ^ __Returns:__ 
  The next record batch in the stream or 'Nothing' on end of stream. /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchReaderReadNextRecordBatch reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_record_batch_reader_read_next_record_batch reader'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.RecordBatch.RecordBatch) result'
            return result''
        touchManagedPtr reader
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data RecordBatchReaderReadNextRecordBatchMethodInfo
instance (signature ~ (m (Maybe Arrow.RecordBatch.RecordBatch)), MonadIO m, IsRecordBatchReader a) => O.MethodInfo RecordBatchReaderReadNextRecordBatchMethodInfo a signature where
    overloadedMethod _ = recordBatchReaderReadNextRecordBatch

#endif


