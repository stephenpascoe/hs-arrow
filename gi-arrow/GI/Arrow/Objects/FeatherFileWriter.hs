

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::ipc::feather::TableWriter@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.FeatherFileWriter
    ( 

-- * Exported types
    FeatherFileWriter(..)                   ,
    IsFeatherFileWriter                     ,
    toFeatherFileWriter                     ,
    noFeatherFileWriter                     ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    FeatherFileWriterAppendMethodInfo       ,
#endif
    featherFileWriterAppend                 ,


-- ** close #method:close#

#if ENABLE_OVERLOADING
    FeatherFileWriterCloseMethodInfo        ,
#endif
    featherFileWriterClose                  ,


-- ** new #method:new#

    featherFileWriterNew                    ,


-- ** setDescription #method:setDescription#

#if ENABLE_OVERLOADING
    FeatherFileWriterSetDescriptionMethodInfo,
#endif
    featherFileWriterSetDescription         ,


-- ** setNRows #method:setNRows#

#if ENABLE_OVERLOADING
    FeatherFileWriterSetNRowsMethodInfo     ,
#endif
    featherFileWriterSetNRows               ,




 -- * Properties
-- ** featherTableWriter #attr:featherTableWriter#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    FeatherFileWriterFeatherTableWriterPropertyInfo,
#endif
    constructFeatherFileWriterFeatherTableWriter,
#if ENABLE_OVERLOADING
    featherFileWriterFeatherTableWriter     ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Array as Arrow.Array
import {-# SOURCE #-} qualified GI.Arrow.Objects.OutputStream as Arrow.OutputStream
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype FeatherFileWriter = FeatherFileWriter (ManagedPtr FeatherFileWriter)
foreign import ccall "garrow_feather_file_writer_get_type"
    c_garrow_feather_file_writer_get_type :: IO GType

instance GObject FeatherFileWriter where
    gobjectType _ = c_garrow_feather_file_writer_get_type
    

-- | Type class for types which can be safely cast to `FeatherFileWriter`, for instance with `toFeatherFileWriter`.
class GObject o => IsFeatherFileWriter o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError FeatherFileWriter a) =>
    IsFeatherFileWriter a
#endif
instance IsFeatherFileWriter FeatherFileWriter
instance GObject.Object.IsObject FeatherFileWriter

-- | Cast to `FeatherFileWriter`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFeatherFileWriter :: (MonadIO m, IsFeatherFileWriter o) => o -> m FeatherFileWriter
toFeatherFileWriter = liftIO . unsafeCastTo FeatherFileWriter

-- | A convenience alias for `Nothing` :: `Maybe` `FeatherFileWriter`.
noFeatherFileWriter :: Maybe FeatherFileWriter
noFeatherFileWriter = Nothing

#if ENABLE_OVERLOADING
type family ResolveFeatherFileWriterMethod (t :: Symbol) (o :: *) :: * where
    ResolveFeatherFileWriterMethod "append" o = FeatherFileWriterAppendMethodInfo
    ResolveFeatherFileWriterMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFeatherFileWriterMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFeatherFileWriterMethod "close" o = FeatherFileWriterCloseMethodInfo
    ResolveFeatherFileWriterMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFeatherFileWriterMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFeatherFileWriterMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFeatherFileWriterMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFeatherFileWriterMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFeatherFileWriterMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFeatherFileWriterMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFeatherFileWriterMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFeatherFileWriterMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFeatherFileWriterMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFeatherFileWriterMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFeatherFileWriterMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFeatherFileWriterMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFeatherFileWriterMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFeatherFileWriterMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFeatherFileWriterMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFeatherFileWriterMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFeatherFileWriterMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFeatherFileWriterMethod "setDescription" o = FeatherFileWriterSetDescriptionMethodInfo
    ResolveFeatherFileWriterMethod "setNRows" o = FeatherFileWriterSetNRowsMethodInfo
    ResolveFeatherFileWriterMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFeatherFileWriterMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFeatherFileWriterMethod t FeatherFileWriter, O.MethodInfo info FeatherFileWriter p) => O.IsLabelProxy t (FeatherFileWriter -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveFeatherFileWriterMethod t FeatherFileWriter, O.MethodInfo info FeatherFileWriter p) => O.IsLabel t (FeatherFileWriter -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "feather-table-writer"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@feather-table-writer@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructFeatherFileWriterFeatherTableWriter :: (IsFeatherFileWriter o) => Ptr () -> IO (GValueConstruct o)
constructFeatherFileWriterFeatherTableWriter val = constructObjectPropertyPtr "feather-table-writer" val

#if ENABLE_OVERLOADING
data FeatherFileWriterFeatherTableWriterPropertyInfo
instance AttrInfo FeatherFileWriterFeatherTableWriterPropertyInfo where
    type AttrAllowedOps FeatherFileWriterFeatherTableWriterPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint FeatherFileWriterFeatherTableWriterPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint FeatherFileWriterFeatherTableWriterPropertyInfo = IsFeatherFileWriter
    type AttrGetType FeatherFileWriterFeatherTableWriterPropertyInfo = ()
    type AttrLabel FeatherFileWriterFeatherTableWriterPropertyInfo = "feather-table-writer"
    type AttrOrigin FeatherFileWriterFeatherTableWriterPropertyInfo = FeatherFileWriter
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructFeatherFileWriterFeatherTableWriter
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList FeatherFileWriter
type instance O.AttributeList FeatherFileWriter = FeatherFileWriterAttributeList
type FeatherFileWriterAttributeList = ('[ '("featherTableWriter", FeatherFileWriterFeatherTableWriterPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
featherFileWriterFeatherTableWriter :: AttrLabelProxy "featherTableWriter"
featherFileWriterFeatherTableWriter = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList FeatherFileWriter = FeatherFileWriterSignalList
type FeatherFileWriterSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FeatherFileWriter::new
-- method type : Constructor
-- Args : [Arg {argCName = "sink", argType = TInterface (Name {namespace = "Arrow", name = "OutputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The output of the writer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_writer_new" garrow_feather_file_writer_new :: 
    Ptr Arrow.OutputStream.OutputStream ->  -- sink : TInterface (Name {namespace = "Arrow", name = "OutputStream"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr FeatherFileWriter)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileWriterNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.OutputStream.IsOutputStream a) =>
    a
    {- ^ /@sink@/: The output of the writer. -}
    -> m (Maybe FeatherFileWriter)
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.FeatherFileWriter.FeatherFileWriter'
  or 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
featherFileWriterNew sink = liftIO $ do
    sink' <- unsafeManagedPtrCastPtr sink
    onException (do
        result <- propagateGError $ garrow_feather_file_writer_new sink'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject FeatherFileWriter) result'
            return result''
        touchManagedPtr sink
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
#endif

-- method FeatherFileWriter::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "writer", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileWriter.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "name", argType = TBasicType TUTF8, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The name of the array to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_writer_append" garrow_feather_file_writer_append :: 
    Ptr FeatherFileWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"})
    CString ->                              -- name : TBasicType TUTF8
    Ptr Arrow.Array.Array ->                -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileWriterAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileWriter a, Arrow.Array.IsArray b) =>
    a
    {- ^ /@writer@/: A 'GI.Arrow.Objects.FeatherFileWriter.FeatherFileWriter'. -}
    -> T.Text
    {- ^ /@name@/: The name of the array to be appended. -}
    -> b
    {- ^ /@array@/: The array to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
featherFileWriterAppend writer name array = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    name' <- textToCString name
    array' <- unsafeManagedPtrCastPtr array
    onException (do
        _ <- propagateGError $ garrow_feather_file_writer_append writer' name' array'
        touchManagedPtr writer
        touchManagedPtr array
        freeMem name'
        return ()
     ) (do
        freeMem name'
     )

#if ENABLE_OVERLOADING
data FeatherFileWriterAppendMethodInfo
instance (signature ~ (T.Text -> b -> m ()), MonadIO m, IsFeatherFileWriter a, Arrow.Array.IsArray b) => O.MethodInfo FeatherFileWriterAppendMethodInfo a signature where
    overloadedMethod _ = featherFileWriterAppend

#endif

-- method FeatherFileWriter::close
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "writer", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileWriter.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_writer_close" garrow_feather_file_writer_close :: 
    Ptr FeatherFileWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileWriterClose ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileWriter a) =>
    a
    {- ^ /@writer@/: A 'GI.Arrow.Objects.FeatherFileWriter.FeatherFileWriter'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
featherFileWriterClose writer = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    onException (do
        _ <- propagateGError $ garrow_feather_file_writer_close writer'
        touchManagedPtr writer
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data FeatherFileWriterCloseMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFeatherFileWriter a) => O.MethodInfo FeatherFileWriterCloseMethodInfo a signature where
    overloadedMethod _ = featherFileWriterClose

#endif

-- method FeatherFileWriter::set_description
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "writer", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileWriter.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "description", argType = TBasicType TUTF8, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The description of the file.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_writer_set_description" garrow_feather_file_writer_set_description :: 
    Ptr FeatherFileWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"})
    CString ->                              -- description : TBasicType TUTF8
    IO ()

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileWriterSetDescription ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileWriter a) =>
    a
    {- ^ /@writer@/: A 'GI.Arrow.Objects.FeatherFileWriter.FeatherFileWriter'. -}
    -> T.Text
    {- ^ /@description@/: The description of the file. -}
    -> m ()
featherFileWriterSetDescription writer description = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    description' <- textToCString description
    garrow_feather_file_writer_set_description writer' description'
    touchManagedPtr writer
    freeMem description'
    return ()

#if ENABLE_OVERLOADING
data FeatherFileWriterSetDescriptionMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsFeatherFileWriter a) => O.MethodInfo FeatherFileWriterSetDescriptionMethodInfo a signature where
    overloadedMethod _ = featherFileWriterSetDescription

#endif

-- method FeatherFileWriter::set_n_rows
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "writer", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileWriter.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_rows", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of rows in the file.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_writer_set_n_rows" garrow_feather_file_writer_set_n_rows :: 
    Ptr FeatherFileWriter ->                -- writer : TInterface (Name {namespace = "Arrow", name = "FeatherFileWriter"})
    Int64 ->                                -- n_rows : TBasicType TInt64
    IO ()

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileWriterSetNRows ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileWriter a) =>
    a
    {- ^ /@writer@/: A 'GI.Arrow.Objects.FeatherFileWriter.FeatherFileWriter'. -}
    -> Int64
    {- ^ /@nRows@/: The number of rows in the file. -}
    -> m ()
featherFileWriterSetNRows writer nRows = liftIO $ do
    writer' <- unsafeManagedPtrCastPtr writer
    garrow_feather_file_writer_set_n_rows writer' nRows
    touchManagedPtr writer
    return ()

#if ENABLE_OVERLOADING
data FeatherFileWriterSetNRowsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsFeatherFileWriter a) => O.MethodInfo FeatherFileWriterSetNRowsMethodInfo a signature where
    overloadedMethod _ = featherFileWriterSetNRows

#endif


