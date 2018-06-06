

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::RecordBatch@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.RecordBatch
    ( 

-- * Exported types
    RecordBatch(..)                         ,
    IsRecordBatch                           ,
    toRecordBatch                           ,
    noRecordBatch                           ,


 -- * Methods
-- ** addColumn #method:addColumn#

#if ENABLE_OVERLOADING
    RecordBatchAddColumnMethodInfo          ,
#endif
    recordBatchAddColumn                    ,


-- ** equal #method:equal#

#if ENABLE_OVERLOADING
    RecordBatchEqualMethodInfo              ,
#endif
    recordBatchEqual                        ,


-- ** getColumn #method:getColumn#

#if ENABLE_OVERLOADING
    RecordBatchGetColumnMethodInfo          ,
#endif
    recordBatchGetColumn                    ,


-- ** getColumnName #method:getColumnName#

#if ENABLE_OVERLOADING
    RecordBatchGetColumnNameMethodInfo      ,
#endif
    recordBatchGetColumnName                ,


-- ** getColumns #method:getColumns#

#if ENABLE_OVERLOADING
    RecordBatchGetColumnsMethodInfo         ,
#endif
    recordBatchGetColumns                   ,


-- ** getNColumns #method:getNColumns#

#if ENABLE_OVERLOADING
    RecordBatchGetNColumnsMethodInfo        ,
#endif
    recordBatchGetNColumns                  ,


-- ** getNRows #method:getNRows#

#if ENABLE_OVERLOADING
    RecordBatchGetNRowsMethodInfo           ,
#endif
    recordBatchGetNRows                     ,


-- ** getSchema #method:getSchema#

#if ENABLE_OVERLOADING
    RecordBatchGetSchemaMethodInfo          ,
#endif
    recordBatchGetSchema                    ,


-- ** new #method:new#

    recordBatchNew                          ,


-- ** removeColumn #method:removeColumn#

#if ENABLE_OVERLOADING
    RecordBatchRemoveColumnMethodInfo       ,
#endif
    recordBatchRemoveColumn                 ,


-- ** slice #method:slice#

#if ENABLE_OVERLOADING
    RecordBatchSliceMethodInfo              ,
#endif
    recordBatchSlice                        ,


-- ** toString #method:toString#

#if ENABLE_OVERLOADING
    RecordBatchToStringMethodInfo           ,
#endif
    recordBatchToString                     ,




 -- * Properties
-- ** recordBatch #attr:recordBatch#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    RecordBatchRecordBatchPropertyInfo      ,
#endif
    constructRecordBatchRecordBatch         ,
#if ENABLE_OVERLOADING
    recordBatchRecordBatch                  ,
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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Field as Arrow.Field
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype RecordBatch = RecordBatch (ManagedPtr RecordBatch)
foreign import ccall "garrow_record_batch_get_type"
    c_garrow_record_batch_get_type :: IO GType

instance GObject RecordBatch where
    gobjectType _ = c_garrow_record_batch_get_type
    

-- | Type class for types which can be safely cast to `RecordBatch`, for instance with `toRecordBatch`.
class GObject o => IsRecordBatch o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError RecordBatch a) =>
    IsRecordBatch a
#endif
instance IsRecordBatch RecordBatch
instance GObject.Object.IsObject RecordBatch

-- | Cast to `RecordBatch`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toRecordBatch :: (MonadIO m, IsRecordBatch o) => o -> m RecordBatch
toRecordBatch = liftIO . unsafeCastTo RecordBatch

-- | A convenience alias for `Nothing` :: `Maybe` `RecordBatch`.
noRecordBatch :: Maybe RecordBatch
noRecordBatch = Nothing

#if ENABLE_OVERLOADING
type family ResolveRecordBatchMethod (t :: Symbol) (o :: *) :: * where
    ResolveRecordBatchMethod "addColumn" o = RecordBatchAddColumnMethodInfo
    ResolveRecordBatchMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveRecordBatchMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveRecordBatchMethod "equal" o = RecordBatchEqualMethodInfo
    ResolveRecordBatchMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveRecordBatchMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveRecordBatchMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveRecordBatchMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveRecordBatchMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveRecordBatchMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveRecordBatchMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveRecordBatchMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveRecordBatchMethod "removeColumn" o = RecordBatchRemoveColumnMethodInfo
    ResolveRecordBatchMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveRecordBatchMethod "slice" o = RecordBatchSliceMethodInfo
    ResolveRecordBatchMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveRecordBatchMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveRecordBatchMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveRecordBatchMethod "toString" o = RecordBatchToStringMethodInfo
    ResolveRecordBatchMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveRecordBatchMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveRecordBatchMethod "getColumn" o = RecordBatchGetColumnMethodInfo
    ResolveRecordBatchMethod "getColumnName" o = RecordBatchGetColumnNameMethodInfo
    ResolveRecordBatchMethod "getColumns" o = RecordBatchGetColumnsMethodInfo
    ResolveRecordBatchMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveRecordBatchMethod "getNColumns" o = RecordBatchGetNColumnsMethodInfo
    ResolveRecordBatchMethod "getNRows" o = RecordBatchGetNRowsMethodInfo
    ResolveRecordBatchMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveRecordBatchMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveRecordBatchMethod "getSchema" o = RecordBatchGetSchemaMethodInfo
    ResolveRecordBatchMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveRecordBatchMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveRecordBatchMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveRecordBatchMethod t RecordBatch, O.MethodInfo info RecordBatch p) => O.IsLabelProxy t (RecordBatch -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveRecordBatchMethod t RecordBatch, O.MethodInfo info RecordBatch p) => O.IsLabel t (RecordBatch -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "record-batch"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@record-batch@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructRecordBatchRecordBatch :: (IsRecordBatch o) => Ptr () -> IO (GValueConstruct o)
constructRecordBatchRecordBatch val = constructObjectPropertyPtr "record-batch" val

#if ENABLE_OVERLOADING
data RecordBatchRecordBatchPropertyInfo
instance AttrInfo RecordBatchRecordBatchPropertyInfo where
    type AttrAllowedOps RecordBatchRecordBatchPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint RecordBatchRecordBatchPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint RecordBatchRecordBatchPropertyInfo = IsRecordBatch
    type AttrGetType RecordBatchRecordBatchPropertyInfo = ()
    type AttrLabel RecordBatchRecordBatchPropertyInfo = "record-batch"
    type AttrOrigin RecordBatchRecordBatchPropertyInfo = RecordBatch
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructRecordBatchRecordBatch
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList RecordBatch
type instance O.AttributeList RecordBatch = RecordBatchAttributeList
type RecordBatchAttributeList = ('[ '("recordBatch", RecordBatchRecordBatchPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
recordBatchRecordBatch :: AttrLabelProxy "recordBatch"
recordBatchRecordBatch = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList RecordBatch = RecordBatchSignalList
type RecordBatchSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method RecordBatch::new
-- method type : Constructor
-- Args : [Arg {argCName = "schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The schema of the record batch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_rows", argType = TBasicType TUInt32, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of the rows in the record batch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "columns", argType = TGList (TInterface (Name {namespace = "Arrow", name = "Array"})), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The columns in the record batch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "RecordBatch"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_new" garrow_record_batch_new :: 
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Word32 ->                               -- n_rows : TBasicType TUInt32
    Ptr (GList (Ptr Arrow.Array.Array)) ->  -- columns : TGList (TInterface (Name {namespace = "Arrow", name = "Array"}))
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr RecordBatch)

{- |
/No description available in the introspection data./
-}
recordBatchNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Schema.IsSchema a, Arrow.Array.IsArray b) =>
    a
    {- ^ /@schema@/: The schema of the record batch. -}
    -> Word32
    {- ^ /@nRows@/: The number of the rows in the record batch. -}
    -> [b]
    {- ^ /@columns@/: The columns in the record batch. -}
    -> m (Maybe RecordBatch)
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.RecordBatch.RecordBatch' or 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchNew schema nRows columns = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    columns' <- mapM unsafeManagedPtrCastPtr columns
    columns'' <- packGList columns'
    onException (do
        result <- propagateGError $ garrow_record_batch_new schema' nRows columns''
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject RecordBatch) result'
            return result''
        touchManagedPtr schema
        mapM_ touchManagedPtr columns
        g_list_free columns''
        return maybeResult
     ) (do
        g_list_free columns''
     )

#if ENABLE_OVERLOADING
#endif

-- method RecordBatch::add_column
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TUInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the new column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "field", argType = TInterface (Name {namespace = "Arrow", name = "Field"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The field to be added.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "column", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The column to be added.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "RecordBatch"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_add_column" garrow_record_batch_add_column :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr Arrow.Field.Field ->                -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    Ptr Arrow.Array.Array ->                -- column : TInterface (Name {namespace = "Arrow", name = "Array"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr RecordBatch)

{- |
/No description available in the introspection data./

@since 0.9.0
-}
recordBatchAddColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a, Arrow.Field.IsField b, Arrow.Array.IsArray c) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> Word32
    {- ^ /@i@/: The index of the new column. -}
    -> b
    {- ^ /@field@/: The field to be added. -}
    -> c
    {- ^ /@column@/: The column to be added. -}
    -> m (Maybe RecordBatch)
    {- ^ __Returns:__ The newly allocated
  'GI.Arrow.Objects.RecordBatch.RecordBatch' that has a new column or 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchAddColumn recordBatch i field column = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    field' <- unsafeManagedPtrCastPtr field
    column' <- unsafeManagedPtrCastPtr column
    onException (do
        result <- propagateGError $ garrow_record_batch_add_column recordBatch' i field' column'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject RecordBatch) result'
            return result''
        touchManagedPtr recordBatch
        touchManagedPtr field
        touchManagedPtr column
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data RecordBatchAddColumnMethodInfo
instance (signature ~ (Word32 -> b -> c -> m (Maybe RecordBatch)), MonadIO m, IsRecordBatch a, Arrow.Field.IsField b, Arrow.Array.IsArray c) => O.MethodInfo RecordBatchAddColumnMethodInfo a signature where
    overloadedMethod _ = recordBatchAddColumn

#endif

-- method RecordBatch::equal
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "other_record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch to be compared.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_equal" garrow_record_batch_equal :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    Ptr RecordBatch ->                      -- other_record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
recordBatchEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a, IsRecordBatch b) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> b
    {- ^ /@otherRecordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch' to be compared. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if both of them have the same data, 'False'
  otherwise. -}
recordBatchEqual recordBatch otherRecordBatch = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    otherRecordBatch' <- unsafeManagedPtrCastPtr otherRecordBatch
    result <- garrow_record_batch_equal recordBatch' otherRecordBatch'
    let result' = (/= 0) result
    touchManagedPtr recordBatch
    touchManagedPtr otherRecordBatch
    return result'

#if ENABLE_OVERLOADING
data RecordBatchEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsRecordBatch a, IsRecordBatch b) => O.MethodInfo RecordBatchEqualMethodInfo a signature where
    overloadedMethod _ = recordBatchEqual

#endif

-- method RecordBatch::get_column
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target column. If it's negative, index is\n  counted backward from the end of the columns. `-1` means the last\n  column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Array"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_get_column" garrow_record_batch_get_column :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    Int32 ->                                -- i : TBasicType TInt
    IO (Ptr Arrow.Array.Array)

{- |
/No description available in the introspection data./
-}
recordBatchGetColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> Int32
    {- ^ /@i@/: The index of the target column. If it\'s negative, index is
  counted backward from the end of the columns. @-1@ means the last
  column. -}
    -> m (Maybe Arrow.Array.Array)
    {- ^ __Returns:__ The i-th column in the record batch
  on success, 'Nothing' on out of index. -}
recordBatchGetColumn recordBatch i = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    result <- garrow_record_batch_get_column recordBatch' i
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- (wrapObject Arrow.Array.Array) result'
        return result''
    touchManagedPtr recordBatch
    return maybeResult

#if ENABLE_OVERLOADING
data RecordBatchGetColumnMethodInfo
instance (signature ~ (Int32 -> m (Maybe Arrow.Array.Array)), MonadIO m, IsRecordBatch a) => O.MethodInfo RecordBatchGetColumnMethodInfo a signature where
    overloadedMethod _ = recordBatchGetColumn

#endif

-- method RecordBatch::get_column_name
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target column. If it's negative, index is\n  counted backward from the end of the columns. `-1` means the last\n  column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_get_column_name" garrow_record_batch_get_column_name :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    Int32 ->                                -- i : TBasicType TInt
    IO CString

{- |
/No description available in the introspection data./
-}
recordBatchGetColumnName ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> Int32
    {- ^ /@i@/: The index of the target column. If it\'s negative, index is
  counted backward from the end of the columns. @-1@ means the last
  column. -}
    -> m (Maybe T.Text)
    {- ^ __Returns:__ The name of the i-th column in the record batch
  on success, 'Nothing' on out of index -}
recordBatchGetColumnName recordBatch i = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    result <- garrow_record_batch_get_column_name recordBatch' i
    maybeResult <- convertIfNonNull result $ \result' -> do
        result'' <- cstringToText result'
        return result''
    touchManagedPtr recordBatch
    return maybeResult

#if ENABLE_OVERLOADING
data RecordBatchGetColumnNameMethodInfo
instance (signature ~ (Int32 -> m (Maybe T.Text)), MonadIO m, IsRecordBatch a) => O.MethodInfo RecordBatchGetColumnNameMethodInfo a signature where
    overloadedMethod _ = recordBatchGetColumnName

#endif

-- method RecordBatch::get_columns
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TGList (TInterface (Name {namespace = "Arrow", name = "Array"})))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_get_columns" garrow_record_batch_get_columns :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    IO (Ptr (GList (Ptr Arrow.Array.Array)))

{- |
/No description available in the introspection data./
-}
recordBatchGetColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> m [Arrow.Array.Array]
    {- ^ __Returns:__ 
  The columns in the record batch. -}
recordBatchGetColumns recordBatch = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    result <- garrow_record_batch_get_columns recordBatch'
    result' <- unpackGList result
    result'' <- mapM (wrapObject Arrow.Array.Array) result'
    g_list_free result
    touchManagedPtr recordBatch
    return result''

#if ENABLE_OVERLOADING
data RecordBatchGetColumnsMethodInfo
instance (signature ~ (m [Arrow.Array.Array]), MonadIO m, IsRecordBatch a) => O.MethodInfo RecordBatchGetColumnsMethodInfo a signature where
    overloadedMethod _ = recordBatchGetColumns

#endif

-- method RecordBatch::get_n_columns
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_get_n_columns" garrow_record_batch_get_n_columns :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    IO Word32

{- |
/No description available in the introspection data./
-}
recordBatchGetNColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> m Word32
    {- ^ __Returns:__ The number of columns in the record batch. -}
recordBatchGetNColumns recordBatch = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    result <- garrow_record_batch_get_n_columns recordBatch'
    touchManagedPtr recordBatch
    return result

#if ENABLE_OVERLOADING
data RecordBatchGetNColumnsMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsRecordBatch a) => O.MethodInfo RecordBatchGetNColumnsMethodInfo a signature where
    overloadedMethod _ = recordBatchGetNColumns

#endif

-- method RecordBatch::get_n_rows
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_get_n_rows" garrow_record_batch_get_n_rows :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    IO Int64

{- |
/No description available in the introspection data./
-}
recordBatchGetNRows ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> m Int64
    {- ^ __Returns:__ The number of rows in the record batch. -}
recordBatchGetNRows recordBatch = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    result <- garrow_record_batch_get_n_rows recordBatch'
    touchManagedPtr recordBatch
    return result

#if ENABLE_OVERLOADING
data RecordBatchGetNRowsMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsRecordBatch a) => O.MethodInfo RecordBatchGetNRowsMethodInfo a signature where
    overloadedMethod _ = recordBatchGetNRows

#endif

-- method RecordBatch::get_schema
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Schema"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_get_schema" garrow_record_batch_get_schema :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    IO (Ptr Arrow.Schema.Schema)

{- |
/No description available in the introspection data./
-}
recordBatchGetSchema ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> m Arrow.Schema.Schema
    {- ^ __Returns:__ The schema of the record batch. -}
recordBatchGetSchema recordBatch = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    result <- garrow_record_batch_get_schema recordBatch'
    checkUnexpectedReturnNULL "recordBatchGetSchema" result
    result' <- (wrapObject Arrow.Schema.Schema) result
    touchManagedPtr recordBatch
    return result'

#if ENABLE_OVERLOADING
data RecordBatchGetSchemaMethodInfo
instance (signature ~ (m Arrow.Schema.Schema), MonadIO m, IsRecordBatch a) => O.MethodInfo RecordBatchGetSchemaMethodInfo a signature where
    overloadedMethod _ = recordBatchGetSchema

#endif

-- method RecordBatch::remove_column
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TUInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the new column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "RecordBatch"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_remove_column" garrow_record_batch_remove_column :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr RecordBatch)

{- |
/No description available in the introspection data./

@since 0.9.0
-}
recordBatchRemoveColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> Word32
    {- ^ /@i@/: The index of the new column. -}
    -> m (Maybe RecordBatch)
    {- ^ __Returns:__ The newly allocated
  'GI.Arrow.Objects.RecordBatch.RecordBatch' that doesn\'t have the column or 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchRemoveColumn recordBatch i = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    onException (do
        result <- propagateGError $ garrow_record_batch_remove_column recordBatch' i
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject RecordBatch) result'
            return result''
        touchManagedPtr recordBatch
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data RecordBatchRemoveColumnMethodInfo
instance (signature ~ (Word32 -> m (Maybe RecordBatch)), MonadIO m, IsRecordBatch a) => O.MethodInfo RecordBatchRemoveColumnMethodInfo a signature where
    overloadedMethod _ = recordBatchRemoveColumn

#endif

-- method RecordBatch::slice
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "offset", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The offset of sub #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of sub #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "RecordBatch"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_record_batch_slice" garrow_record_batch_slice :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    Int64 ->                                -- offset : TBasicType TInt64
    Int64 ->                                -- length : TBasicType TInt64
    IO (Ptr RecordBatch)

{- |
/No description available in the introspection data./
-}
recordBatchSlice ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> Int64
    {- ^ /@offset@/: The offset of sub 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> Int64
    {- ^ /@length@/: The length of sub 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> m RecordBatch
    {- ^ __Returns:__ The sub 'GI.Arrow.Objects.RecordBatch.RecordBatch'. It covers
  only from @offset@ to @offset + length@ range. The sub
  'GI.Arrow.Objects.RecordBatch.RecordBatch' shares values with the base
  'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
recordBatchSlice recordBatch offset length_ = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    result <- garrow_record_batch_slice recordBatch' offset length_
    checkUnexpectedReturnNULL "recordBatchSlice" result
    result' <- (wrapObject RecordBatch) result
    touchManagedPtr recordBatch
    return result'

#if ENABLE_OVERLOADING
data RecordBatchSliceMethodInfo
instance (signature ~ (Int64 -> Int64 -> m RecordBatch), MonadIO m, IsRecordBatch a) => O.MethodInfo RecordBatchSliceMethodInfo a signature where
    overloadedMethod _ = recordBatchSlice

#endif

-- method RecordBatch::to_string
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "record_batch", argType = TInterface (Name {namespace = "Arrow", name = "RecordBatch"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowRecordBatch.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_record_batch_to_string" garrow_record_batch_to_string :: 
    Ptr RecordBatch ->                      -- record_batch : TInterface (Name {namespace = "Arrow", name = "RecordBatch"})
    Ptr (Ptr GError) ->                     -- error
    IO CString

{- |
/No description available in the introspection data./

@since 0.4.0
-}
recordBatchToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsRecordBatch a) =>
    a
    {- ^ /@recordBatch@/: A 'GI.Arrow.Objects.RecordBatch.RecordBatch'. -}
    -> m (Maybe T.Text)
    {- ^ __Returns:__ The formatted record batch content or 'Nothing' on error.

  The returned string should be freed when with 'GI.GLib.Functions.free' when no
  longer needed. /(Can throw 'Data.GI.Base.GError.GError')/ -}
recordBatchToString recordBatch = liftIO $ do
    recordBatch' <- unsafeManagedPtrCastPtr recordBatch
    onException (do
        result <- propagateGError $ garrow_record_batch_to_string recordBatch'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- cstringToText result'
            freeMem result'
            return result''
        touchManagedPtr recordBatch
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data RecordBatchToStringMethodInfo
instance (signature ~ (m (Maybe T.Text)), MonadIO m, IsRecordBatch a) => O.MethodInfo RecordBatchToStringMethodInfo a signature where
    overloadedMethod _ = recordBatchToString

#endif


