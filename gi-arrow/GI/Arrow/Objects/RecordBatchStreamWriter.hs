

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::ipc::RecordBatchStreamWriter@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.RecordBatchStreamWriter
    ( 

-- * Exported types
    RecordBatchStreamWriter(..)             ,
    IsRecordBatchStreamWriter               ,
    toRecordBatchStreamWriter               ,
    noRecordBatchStreamWriter               ,


 -- * Methods
-- ** new #method:new#

    recordBatchStreamWriterNew              ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.OutputStream as Arrow.OutputStream
import {-# SOURCE #-} qualified GI.Arrow.Objects.RecordBatchWriter as Arrow.RecordBatchWriter
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatchStreamWriter = RecordBatchStreamWriter (ManagedPtr RecordBatchStreamWriter)
foreign import ccall "garrow_record_batch_stream_writer_get_type"
    c_garrow_record_batch_stream_writer_get_type :: IO GType

instance GObject RecordBatchStreamWriter where
    gobjectType _ = c_garrow_record_batch_stream_writer_get_type
    

-- | Type class for types which can be safely cast to `RecordBatchStreamWriter`, for instance with `toRecordBatchStreamWriter`.
class GObject o => IsRecordBatchStreamWriter o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError RecordBatchStreamWriter a) =>
    IsRecordBatchStreamWriter a
#endif
instance IsRecordBatchStreamWriter RecordBatchStreamWriter
instance Arrow.RecordBatchWriter.IsRecordBatchWriter RecordBatchStreamWriter
instance GObject.Object.IsObject RecordBatchStreamWriter

-- | Cast to `RecordBatchStreamWriter`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatchStreamWriter :: (MonadIO m, IsRecordBatchStreamWriter o) => o -> m RecordBatchStreamWriter
toRecordBatchStreamWriter = liftIO . unsafeCastTo RecordBatchStreamWriter

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatchStreamWriter`.
noRecordBatchStreamWriter :: Maybe RecordBatchStreamWriter
noRecordBatchStreamWriter = Nothing

#if ENABLE_OVERLOADING
type family ResolveRecordBatchStreamWriterMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchStreamWriterMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchStreamWriterMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchStreamWriterMethod "close" o = Arrow.RecordBatchWriter.RecordBatchWriterCloseMethodInfo
    ResolveRecordBatchStreamWriterMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchStreamWriterMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchStreamWriterMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchStreamWriterMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchStreamWriterMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchStreamWriterMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchStreamWriterMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchStreamWriterMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchStreamWriterMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchStreamWriterMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchStreamWriterMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchStreamWriterMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchStreamWriterMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchStreamWriterMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchStreamWriterMethod "writeRecordBatch" o = Arrow.RecordBatchWriter.RecordBatchWriterWriteRecordBatchMethodInfo
    ResolveRecordBatchStreamWriterMethod "writeTable" o = Arrow.RecordBatchWriter.RecordBatchWriterWriteTableMethodInfo
    ResolveRecordBatchStreamWriterMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchStreamWriterMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchStreamWriterMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchStreamWriterMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchStreamWriterMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchStreamWriterMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchStreamWriterMethod t RecordBatchStreamWriter, O.MethodInfo info RecordBatchStreamWriter p) => O.IsLabelProxy t (RecordBatchStreamWriter -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveRecordBatchStreamWriterMethod t RecordBatchStreamWriter, O.MethodInfo info RecordBatchStreamWriter p) => O.IsLabel t (RecordBatchStreamWriter -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList RecordBatchStreamWriter
type instance O.AttributeList RecordBatchStreamWriter = RecordBatchStreamWriterAttributeList
type RecordBatchStreamWriterAttributeList = ('[ '("recordBatchWriter", Arrow.RecordBatchWriter.RecordBatchWriterRecordBatchWriterPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList RecordBatchStreamWriter = RecordBatchStreamWriterSignalList
type RecordBatchStreamWriterSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatchStreamWriter::new
-- method type : Constructor
-- Args : [Arg {argCName = "sink", argType = TInterface (Name {namespace = "Arrow", name = "OutputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The output of the writer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The schema of the writer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "RecordBatchStreamWriter"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_stream_writer_new" garrow_record_batch_stream_writer_new :: 
    Ptr Arrow.OutputStream.OutputStream ->  -- sink : TInterface (Name {namespace = "Arrow", name = "OutputStream"})
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr RecordBatchStreamWriter)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
recordBatchStreamWriterNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.OutputStream.IsOutputStream a, Arrow.Schema.IsSchema b) =>
    a
    {- ^ /@sink@/: The output of the writer. -}
    -> b
    {- ^ /@schema@/: The schema of the writer. -}
    -> m (Maybe RecordBatchStreamWriter)
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.RecordBatchStreamWriter.RecordBatchStreamWriter'
  or 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchStreamWriterNew sink schema = liftIO $ do
    sink' <- unsafeManagedPtrCastPtr sink
    schema' <- unsafeManagedPtrCastPtr schema
    onException (do
        result <- propagateGError $ garrow_record_batch_stream_writer_new sink' schema'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject RecordBatchStreamWriter) result'
            return result''
        touchManagedPtr sink
        touchManagedPtr schema
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
#endif


