

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Table@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Table
    ( 

-- * Exported types
    Table(..)                               ,
    IsTable                                 ,
    toTable                                 ,
    noTable                                 ,


 -- * Methods
-- ** addColumn #method:addColumn#

#if ENABLE_OVERLOADING
    TableAddColumnMethodInfo                ,
#endif
    tableAddColumn                          ,


-- ** equal #method:equal#

#if ENABLE_OVERLOADING
    TableEqualMethodInfo                    ,
#endif
    tableEqual                              ,


-- ** getColumn #method:getColumn#

#if ENABLE_OVERLOADING
    TableGetColumnMethodInfo                ,
#endif
    tableGetColumn                          ,


-- ** getNColumns #method:getNColumns#

#if ENABLE_OVERLOADING
    TableGetNColumnsMethodInfo              ,
#endif
    tableGetNColumns                        ,


-- ** getNRows #method:getNRows#

#if ENABLE_OVERLOADING
    TableGetNRowsMethodInfo                 ,
#endif
    tableGetNRows                           ,


-- ** getSchema #method:getSchema#

#if ENABLE_OVERLOADING
    TableGetSchemaMethodInfo                ,
#endif
    tableGetSchema                          ,


-- ** new #method:new#

    tableNew                                ,


-- ** removeColumn #method:removeColumn#

#if ENABLE_OVERLOADING
    TableRemoveColumnMethodInfo             ,
#endif
    tableRemoveColumn                       ,




 -- * Properties
-- ** table #attr:table#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    TableTablePropertyInfo                  ,
#endif
    constructTableTable                     ,
#if ENABLE_OVERLOADING
    tableTable                              ,
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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Schema as Arrow.Schema
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Table = Table (ManagedPtr Table)
foreign import ccall "garrow_table_get_type"
    c_garrow_table_get_type :: IO GType

instance GObject Table where
    gobjectType _ = c_garrow_table_get_type
    

-- | Type class for types which can be safely cast to `Table`, for instance with `toTable`.
class GObject o => IsTable o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Table a) =>
    IsTable a
#endif
instance IsTable Table
instance GObject.Object.IsObject Table

-- | Cast to `Table`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTable :: (MonadIO m, IsTable o) => o -> m Table
toTable = liftIO . unsafeCastTo Table

-- | A convenience alias for `Nothing` :: `Maybe` `Table`.
noTable :: Maybe Table
noTable = Nothing

#if ENABLE_OVERLOADING
type family ResolveTableMethod (t :: Symbol) (o :: *) :: * where
    ResolveTableMethod "addColumn" o = TableAddColumnMethodInfo
    ResolveTableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTableMethod "equal" o = TableEqualMethodInfo
    ResolveTableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTableMethod "removeColumn" o = TableRemoveColumnMethodInfo
    ResolveTableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTableMethod "getColumn" o = TableGetColumnMethodInfo
    ResolveTableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTableMethod "getNColumns" o = TableGetNColumnsMethodInfo
    ResolveTableMethod "getNRows" o = TableGetNRowsMethodInfo
    ResolveTableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTableMethod "getSchema" o = TableGetSchemaMethodInfo
    ResolveTableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTableMethod t Table, O.MethodInfo info Table p) => O.IsLabelProxy t (Table -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTableMethod t Table, O.MethodInfo info Table p) => O.IsLabel t (Table -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "table"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@table@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructTableTable :: (IsTable o) => Ptr () -> IO (GValueConstruct o)
constructTableTable val = constructObjectPropertyPtr "table" val

#if ENABLE_OVERLOADING
data TableTablePropertyInfo
instance AttrInfo TableTablePropertyInfo where
    type AttrAllowedOps TableTablePropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint TableTablePropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint TableTablePropertyInfo = IsTable
    type AttrGetType TableTablePropertyInfo = ()
    type AttrLabel TableTablePropertyInfo = "table"
    type AttrOrigin TableTablePropertyInfo = Table
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructTableTable
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Table
type instance O.AttributeList Table = TableAttributeList
type TableAttributeList = ('[ '("table", TableTablePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
tableTable :: AttrLabelProxy "table"
tableTable = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Table = TableSignalList
type TableSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Table::new
-- method type : Constructor
-- Args : [Arg {argCName = "schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The schema of the table.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "columns", argType = TGList (TInterface (Name {namespace = "Arrow", name = "Column"})), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The columns of the table.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Table"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_new" garrow_table_new :: 
    Ptr Arrow.Schema.Schema ->              -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr (GList (Ptr Arrow.Column.Column)) -> -- columns : TGList (TInterface (Name {namespace = "Arrow", name = "Column"}))
    IO (Ptr Table)

{- |
/No description available in the introspection data./
-}
tableNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Schema.IsSchema a, Arrow.Column.IsColumn b) =>
    a
    {- ^ /@schema@/: The schema of the table. -}
    -> [b]
    {- ^ /@columns@/: The columns of the table. -}
    -> m Table
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Table.Table'. -}
tableNew schema columns = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    columns' <- mapM unsafeManagedPtrCastPtr columns
    columns'' <- packGList columns'
    result <- garrow_table_new schema' columns''
    checkUnexpectedReturnNULL "tableNew" result
    result' <- (wrapObject Table) result
    touchManagedPtr schema
    mapM_ touchManagedPtr columns
    g_list_free columns''
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Table::add_column
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "table", argType = TInterface (Name {namespace = "Arrow", name = "Table"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTable.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TUInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the new column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "column", argType = TInterface (Name {namespace = "Arrow", name = "Column"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The column to be added.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Table"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_table_add_column" garrow_table_add_column :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr Arrow.Column.Column ->              -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Table)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tableAddColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a, Arrow.Column.IsColumn b) =>
    a
    {- ^ /@table@/: A 'GI.Arrow.Objects.Table.Table'. -}
    -> Word32
    {- ^ /@i@/: The index of the new column. -}
    -> b
    {- ^ /@column@/: The column to be added. -}
    -> m (Maybe Table)
    {- ^ __Returns:__ The newly allocated
  'GI.Arrow.Objects.Table.Table' that has a new column or 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
tableAddColumn table i column = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    column' <- unsafeManagedPtrCastPtr column
    onException (do
        result <- propagateGError $ garrow_table_add_column table' i column'
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Table) result'
            return result''
        touchManagedPtr table
        touchManagedPtr column
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data TableAddColumnMethodInfo
instance (signature ~ (Word32 -> b -> m (Maybe Table)), MonadIO m, IsTable a, Arrow.Column.IsColumn b) => O.MethodInfo TableAddColumnMethodInfo a signature where
    overloadedMethod _ = tableAddColumn

#endif

-- method Table::equal
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "table", argType = TInterface (Name {namespace = "Arrow", name = "Table"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTable.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "other_table", argType = TInterface (Name {namespace = "Arrow", name = "Table"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTable to be compared.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_equal" garrow_table_equal :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Ptr Table ->                            -- other_table : TInterface (Name {namespace = "Arrow", name = "Table"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
tableEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a, IsTable b) =>
    a
    {- ^ /@table@/: A 'GI.Arrow.Objects.Table.Table'. -}
    -> b
    {- ^ /@otherTable@/: A 'GI.Arrow.Objects.Table.Table' to be compared. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if both of them have the same data, 'False'
  otherwise. -}
tableEqual table otherTable = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    otherTable' <- unsafeManagedPtrCastPtr otherTable
    result <- garrow_table_equal table' otherTable'
    let result' = (/= 0) result
    touchManagedPtr table
    touchManagedPtr otherTable
    return result'

#if ENABLE_OVERLOADING
data TableEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsTable a, IsTable b) => O.MethodInfo TableEqualMethodInfo a signature where
    overloadedMethod _ = tableEqual

#endif

-- method Table::get_column
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "table", argType = TInterface (Name {namespace = "Arrow", name = "Table"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTable.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TUInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Column"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_get_column" garrow_table_get_column :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Word32 ->                               -- i : TBasicType TUInt
    IO (Ptr Arrow.Column.Column)

{- |
/No description available in the introspection data./
-}
tableGetColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    {- ^ /@table@/: A 'GI.Arrow.Objects.Table.Table'. -}
    -> Word32
    {- ^ /@i@/: The index of the target column. -}
    -> m Arrow.Column.Column
    {- ^ __Returns:__ The i-th column in the table. -}
tableGetColumn table i = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- garrow_table_get_column table' i
    checkUnexpectedReturnNULL "tableGetColumn" result
    result' <- (wrapObject Arrow.Column.Column) result
    touchManagedPtr table
    return result'

#if ENABLE_OVERLOADING
data TableGetColumnMethodInfo
instance (signature ~ (Word32 -> m Arrow.Column.Column), MonadIO m, IsTable a) => O.MethodInfo TableGetColumnMethodInfo a signature where
    overloadedMethod _ = tableGetColumn

#endif

-- method Table::get_n_columns
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "table", argType = TInterface (Name {namespace = "Arrow", name = "Table"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTable.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_get_n_columns" garrow_table_get_n_columns :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    IO Word32

{- |
/No description available in the introspection data./
-}
tableGetNColumns ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    {- ^ /@table@/: A 'GI.Arrow.Objects.Table.Table'. -}
    -> m Word32
    {- ^ __Returns:__ The number of columns in the table. -}
tableGetNColumns table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- garrow_table_get_n_columns table'
    touchManagedPtr table
    return result

#if ENABLE_OVERLOADING
data TableGetNColumnsMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsTable a) => O.MethodInfo TableGetNColumnsMethodInfo a signature where
    overloadedMethod _ = tableGetNColumns

#endif

-- method Table::get_n_rows
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "table", argType = TInterface (Name {namespace = "Arrow", name = "Table"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTable.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_get_n_rows" garrow_table_get_n_rows :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    IO Word64

{- |
/No description available in the introspection data./
-}
tableGetNRows ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    {- ^ /@table@/: A 'GI.Arrow.Objects.Table.Table'. -}
    -> m Word64
    {- ^ __Returns:__ The number of rows in the table. -}
tableGetNRows table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- garrow_table_get_n_rows table'
    touchManagedPtr table
    return result

#if ENABLE_OVERLOADING
data TableGetNRowsMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsTable a) => O.MethodInfo TableGetNRowsMethodInfo a signature where
    overloadedMethod _ = tableGetNRows

#endif

-- method Table::get_schema
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "table", argType = TInterface (Name {namespace = "Arrow", name = "Table"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTable.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Schema"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_table_get_schema" garrow_table_get_schema :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    IO (Ptr Arrow.Schema.Schema)

{- |
/No description available in the introspection data./
-}
tableGetSchema ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    {- ^ /@table@/: A 'GI.Arrow.Objects.Table.Table'. -}
    -> m Arrow.Schema.Schema
    {- ^ __Returns:__ The schema of the table. -}
tableGetSchema table = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    result <- garrow_table_get_schema table'
    checkUnexpectedReturnNULL "tableGetSchema" result
    result' <- (wrapObject Arrow.Schema.Schema) result
    touchManagedPtr table
    return result'

#if ENABLE_OVERLOADING
data TableGetSchemaMethodInfo
instance (signature ~ (m Arrow.Schema.Schema), MonadIO m, IsTable a) => O.MethodInfo TableGetSchemaMethodInfo a signature where
    overloadedMethod _ = tableGetSchema

#endif

-- method Table::remove_column
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "table", argType = TInterface (Name {namespace = "Arrow", name = "Table"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTable.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TUInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the column to be removed.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Table"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_table_remove_column" garrow_table_remove_column :: 
    Ptr Table ->                            -- table : TInterface (Name {namespace = "Arrow", name = "Table"})
    Word32 ->                               -- i : TBasicType TUInt
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Table)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tableRemoveColumn ::
    (B.CallStack.HasCallStack, MonadIO m, IsTable a) =>
    a
    {- ^ /@table@/: A 'GI.Arrow.Objects.Table.Table'. -}
    -> Word32
    {- ^ /@i@/: The index of the column to be removed. -}
    -> m (Maybe Table)
    {- ^ __Returns:__ The newly allocated
  'GI.Arrow.Objects.Table.Table' that doesn\'t have the column or 'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
tableRemoveColumn table i = liftIO $ do
    table' <- unsafeManagedPtrCastPtr table
    onException (do
        result <- propagateGError $ garrow_table_remove_column table' i
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Table) result'
            return result''
        touchManagedPtr table
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data TableRemoveColumnMethodInfo
instance (signature ~ (Word32 -> m (Maybe Table)), MonadIO m, IsTable a) => O.MethodInfo TableRemoveColumnMethodInfo a signature where
    overloadedMethod _ = tableRemoveColumn

#endif


