

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::ipc::feather::TableReader@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.FeatherFileReader
    ( 

-- * Exported types
    FeatherFileReader(..)                   ,
    IsFeatherFileReader                     ,
    toFeatherFileReader                     ,
    noFeatherFileReader                     ,


 -- * Methods
-- ** getColumn #method:getColumn#

#if ENABLE_OVERLOADING
    FeatherFileReaderGetColumnMethodInfo    ,
#endif
    featherFileReaderGetColumn              ,


-- ** getColumnName #method:getColumnName#

#if ENABLE_OVERLOADING
    FeatherFileReaderGetColumnNameMethodInfo,
#endif
    featherFileReaderGetColumnName          ,


-- ** getColumns #method:getColumns#

#if ENABLE_OVERLOADING
    FeatherFileReaderGetColumnsMethodInfo   ,
#endif
    featherFileReaderGetColumns             ,


-- ** getDescription #method:getDescription#

#if ENABLE_OVERLOADING
    FeatherFileReaderGetDescriptionMethodInfo,
#endif
    featherFileReaderGetDescription         ,


-- ** getNColumns #method:getNColumns#

#if ENABLE_OVERLOADING
    FeatherFileReaderGetNColumnsMethodInfo  ,
#endif
    featherFileReaderGetNColumns            ,


-- ** getNRows #method:getNRows#

#if ENABLE_OVERLOADING
    FeatherFileReaderGetNRowsMethodInfo     ,
#endif
    featherFileReaderGetNRows               ,


-- ** getVersion #method:getVersion#

#if ENABLE_OVERLOADING
    FeatherFileReaderGetVersionMethodInfo   ,
#endif
    featherFileReaderGetVersion             ,


-- ** hasDescription #method:hasDescription#

#if ENABLE_OVERLOADING
    FeatherFileReaderHasDescriptionMethodInfo,
#endif
    featherFileReaderHasDescription         ,


-- ** new #method:new#

    featherFileReaderNew                    ,




 -- * Properties
-- ** featherTableReader #attr:featherTableReader#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    FeatherFileReaderFeatherTableReaderPropertyInfo,
#endif
    constructFeatherFileReaderFeatherTableReader,
#if ENABLE_OVERLOADING
    featherFileReaderFeatherTableReader     ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Column as Arrow.Column
import {-# SOURCE #-} qualified GI.Arrow.Objects.SeekableInputStream as Arrow.SeekableInputStream
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype FeatherFileReader = FeatherFileReader (ManagedPtr FeatherFileReader)
foreign import ccall "garrow_feather_file_reader_get_type"
    c_garrow_feather_file_reader_get_type :: IO GType

instance GObject FeatherFileReader where
    gobjectType _ = c_garrow_feather_file_reader_get_type
    

-- | Type class for types which can be safely cast to `FeatherFileReader`, for instance with `toFeatherFileReader`.
class GObject o => IsFeatherFileReader o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError FeatherFileReader a) =>
    IsFeatherFileReader a
#endif
instance IsFeatherFileReader FeatherFileReader
instance GObject.Object.IsObject FeatherFileReader

-- | Cast to `FeatherFileReader`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFeatherFileReader :: (MonadIO m, IsFeatherFileReader o) => o -> m FeatherFileReader
toFeatherFileReader = liftIO . unsafeCastTo FeatherFileReader

-- | A convenience alias for `Nothing` :: `Maybe` `FeatherFileReader`.
noFeatherFileReader :: Maybe FeatherFileReader
noFeatherFileReader = Nothing

#if ENABLE_OVERLOADING
type family ResolveFeatherFileReaderMethod (t :: Symbol) (o :: *) :: * where
    ResolveFeatherFileReaderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFeatherFileReaderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFeatherFileReaderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFeatherFileReaderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFeatherFileReaderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFeatherFileReaderMethod "hasDescription" o = FeatherFileReaderHasDescriptionMethodInfo
    ResolveFeatherFileReaderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFeatherFileReaderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFeatherFileReaderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFeatherFileReaderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFeatherFileReaderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFeatherFileReaderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFeatherFileReaderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFeatherFileReaderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFeatherFileReaderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFeatherFileReaderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFeatherFileReaderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFeatherFileReaderMethod "getColumn" o = FeatherFileReaderGetColumnMethodInfo
    ResolveFeatherFileReaderMethod "getColumnName" o = FeatherFileReaderGetColumnNameMethodInfo
    ResolveFeatherFileReaderMethod "getColumns" o = FeatherFileReaderGetColumnsMethodInfo
    ResolveFeatherFileReaderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFeatherFileReaderMethod "getDescription" o = FeatherFileReaderGetDescriptionMethodInfo
    ResolveFeatherFileReaderMethod "getNColumns" o = FeatherFileReaderGetNColumnsMethodInfo
    ResolveFeatherFileReaderMethod "getNRows" o = FeatherFileReaderGetNRowsMethodInfo
    ResolveFeatherFileReaderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFeatherFileReaderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFeatherFileReaderMethod "getVersion" o = FeatherFileReaderGetVersionMethodInfo
    ResolveFeatherFileReaderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFeatherFileReaderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFeatherFileReaderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFeatherFileReaderMethod t FeatherFileReader, O.MethodInfo info FeatherFileReader p) => O.IsLabelProxy t (FeatherFileReader -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveFeatherFileReaderMethod t FeatherFileReader, O.MethodInfo info FeatherFileReader p) => O.IsLabel t (FeatherFileReader -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "feather-table-reader"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@feather-table-reader@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructFeatherFileReaderFeatherTableReader :: (IsFeatherFileReader o) => Ptr () -> IO (GValueConstruct o)
constructFeatherFileReaderFeatherTableReader val = constructObjectPropertyPtr "feather-table-reader" val

#if ENABLE_OVERLOADING
data FeatherFileReaderFeatherTableReaderPropertyInfo
instance AttrInfo FeatherFileReaderFeatherTableReaderPropertyInfo where
    type AttrAllowedOps FeatherFileReaderFeatherTableReaderPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint FeatherFileReaderFeatherTableReaderPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint FeatherFileReaderFeatherTableReaderPropertyInfo = IsFeatherFileReader
    type AttrGetType FeatherFileReaderFeatherTableReaderPropertyInfo = ()
    type AttrLabel FeatherFileReaderFeatherTableReaderPropertyInfo = "feather-table-reader"
    type AttrOrigin FeatherFileReaderFeatherTableReaderPropertyInfo = FeatherFileReader
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructFeatherFileReaderFeatherTableReader
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList FeatherFileReader
type instance O.AttributeList FeatherFileReader = FeatherFileReaderAttributeList
type FeatherFileReaderAttributeList = ('[ '("featherTableReader", FeatherFileReaderFeatherTableReaderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
featherFileReaderFeatherTableReader :: AttrLabelProxy "featherTableReader"
featherFileReaderFeatherTableReader = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList FeatherFileReader = FeatherFileReaderSignalList
type FeatherFileReaderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FeatherFileReader::new
-- method type : Constructor
-- Args : [Arg {argCName = "file", argType = TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The file to be read.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_new" garrow_feather_file_reader_new :: 
    Ptr Arrow.SeekableInputStream.SeekableInputStream -> -- file : TInterface (Name {namespace = "Arrow", name = "SeekableInputStream"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr FeatherFileReader)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileReaderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.SeekableInputStream.IsSeekableInputStream a) =>
    a
    {- ^ /@file@/: The file to be read. -}
    -> m (Maybe FeatherFileReader)
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'
  or 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
featherFileReaderNew file = liftIO $ do
    file' <- unsafeManagedPtrCastPtr file
    onException (do
        result <- propagateGError $ garrow_feather_file_reader_new file'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject FeatherFileReader) result'
            return result''
        touchManagedPtr file
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
#endif

-- method FeatherFileReader::get_column
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Column"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_column" garrow_feather_file_reader_get_column :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    Int32 ->                                -- i : TBasicType TInt
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Column.Column)

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileReaderGetColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'. -}
    -> Int32
    {- ^ /@i@/: The index of the target column. -}
    -> m (Maybe Arrow.Column.Column)
    {- ^ __Returns:__ 
  The i-th column in the file or 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
featherFileReaderGetColumn reader i = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_feather_file_reader_get_column reader' i
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.Column.Column) result'
            return result''
        touchManagedPtr reader
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data FeatherFileReaderGetColumnMethodInfo
instance (signature ~ (Int32 -> m (Maybe Arrow.Column.Column)), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetColumnMethodInfo a signature where
    overloadedMethod _ = featherFileReaderGetColumn

#endif

-- method FeatherFileReader::get_column_name
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_column_name" garrow_feather_file_reader_get_column_name :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    Int32 ->                                -- i : TBasicType TInt
    IO CString

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileReaderGetColumnName ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'. -}
    -> Int32
    {- ^ /@i@/: The index of the target column. -}
    -> m T.Text
    {- ^ __Returns:__ The i-th column name in the file.
  It should be freed with 'GI.GLib.Functions.free' when no longer needed. -}
featherFileReaderGetColumnName reader i = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_get_column_name reader' i
    checkUnexpectedReturnNULL "featherFileReaderGetColumnName" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr reader
    return result'

#if ENABLE_OVERLOADING
data FeatherFileReaderGetColumnNameMethodInfo
instance (signature ~ (Int32 -> m T.Text), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetColumnNameMethodInfo a signature where
    overloadedMethod _ = featherFileReaderGetColumnName

#endif

-- method FeatherFileReader::get_columns
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TGList (TInterface (Name {namespace = "Arrow", name = "Column"})))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_columns" garrow_feather_file_reader_get_columns :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr (GList (Ptr Arrow.Column.Column)))

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileReaderGetColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'. -}
    -> m [Arrow.Column.Column]
    {- ^ __Returns:__ 
  The columns in the file. /(Can throw 'Data.GI.Base.GError.GError')/ -}
featherFileReaderGetColumns reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    onException (do
        result <- propagateGError $ garrow_feather_file_reader_get_columns reader'
        result' <- unpackGList result
        result'' <- mapM (wrapObject Arrow.Column.Column) result'
        g_list_free result
        touchManagedPtr reader
        return result''
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data FeatherFileReaderGetColumnsMethodInfo
instance (signature ~ (m [Arrow.Column.Column]), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetColumnsMethodInfo a signature where
    overloadedMethod _ = featherFileReaderGetColumns

#endif

-- method FeatherFileReader::get_description
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_description" garrow_feather_file_reader_get_description :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    IO CString

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileReaderGetDescription ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'. -}
    -> m (Maybe T.Text)
    {- ^ __Returns:__ The description of the file if it exists,
  'Nothing' otherwise. You can confirm whether description exists or not by
  'GI.Arrow.Objects.FeatherFileReader.featherFileReaderHasDescription'.
  It should be freed with 'GI.GLib.Functions.free' when no longer needed. -}
featherFileReaderGetDescription reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_get_description reader'
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        freeMem result'
        return result''
    touchManagedPtr reader
    return maybeResult

#if ENABLE_OVERLOADING
data FeatherFileReaderGetDescriptionMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetDescriptionMethodInfo a signature where
    overloadedMethod _ = featherFileReaderGetDescription

#endif

-- method FeatherFileReader::get_n_columns
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_n_columns" garrow_feather_file_reader_get_n_columns :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    IO Int64

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileReaderGetNColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'. -}
    -> m Int64
    {- ^ __Returns:__ The number of columns in the file. -}
featherFileReaderGetNColumns reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_get_n_columns reader'
    touchManagedPtr reader
    return result

#if ENABLE_OVERLOADING
data FeatherFileReaderGetNColumnsMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetNColumnsMethodInfo a signature where
    overloadedMethod _ = featherFileReaderGetNColumns

#endif

-- method FeatherFileReader::get_n_rows
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_n_rows" garrow_feather_file_reader_get_n_rows :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    IO Int64

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileReaderGetNRows ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'. -}
    -> m Int64
    {- ^ __Returns:__ The number of rows in the file. -}
featherFileReaderGetNRows reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_get_n_rows reader'
    touchManagedPtr reader
    return result

#if ENABLE_OVERLOADING
data FeatherFileReaderGetNRowsMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetNRowsMethodInfo a signature where
    overloadedMethod _ = featherFileReaderGetNRows

#endif

-- method FeatherFileReader::get_version
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_get_version" garrow_feather_file_reader_get_version :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    IO Int32

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileReaderGetVersion ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'. -}
    -> m Int32
    {- ^ __Returns:__ The format version of the file. -}
featherFileReaderGetVersion reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_get_version reader'
    touchManagedPtr reader
    return result

#if ENABLE_OVERLOADING
data FeatherFileReaderGetVersionMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderGetVersionMethodInfo a signature where
    overloadedMethod _ = featherFileReaderGetVersion

#endif

-- method FeatherFileReader::has_description
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "reader", argType = TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFeatherFileReader.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_feather_file_reader_has_description" garrow_feather_file_reader_has_description :: 
    Ptr FeatherFileReader ->                -- reader : TInterface (Name {namespace = "Arrow", name = "FeatherFileReader"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
featherFileReaderHasDescription ::
    (B.CallStack.HasCallStack, MonadIO m, IsFeatherFileReader a) =>
    a
    {- ^ /@reader@/: A 'GI.Arrow.Objects.FeatherFileReader.FeatherFileReader'. -}
    -> m Bool
    {- ^ __Returns:__ Whether the file has description or not. -}
featherFileReaderHasDescription reader = liftIO $ do
    reader' <- unsafeManagedPtrCastPtr reader
    result <- garrow_feather_file_reader_has_description reader'
    let result' = (/= 0) result
    touchManagedPtr reader
    return result'

#if ENABLE_OVERLOADING
data FeatherFileReaderHasDescriptionMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsFeatherFileReader a) => O.MethodInfo FeatherFileReaderHasDescriptionMethodInfo a signature where
    overloadedMethod _ = featherFileReaderHasDescription

#endif


