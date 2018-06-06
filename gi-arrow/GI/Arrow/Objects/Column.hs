

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Column@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Column
    ( 

-- * Exported types
    Column(..)                              ,
    IsColumn                                ,
    toColumn                                ,
    noColumn                                ,


 -- * Methods
-- ** equal #method:equal#

#if ENABLE_OVERLOADING
    ColumnEqualMethodInfo                   ,
#endif
    columnEqual                             ,


-- ** getData #method:getData#

#if ENABLE_OVERLOADING
    ColumnGetDataMethodInfo                 ,
#endif
    columnGetData                           ,


-- ** getDataType #method:getDataType#

#if ENABLE_OVERLOADING
    ColumnGetDataTypeMethodInfo             ,
#endif
    columnGetDataType                       ,


-- ** getField #method:getField#

#if ENABLE_OVERLOADING
    ColumnGetFieldMethodInfo                ,
#endif
    columnGetField                          ,


-- ** getLength #method:getLength#

#if ENABLE_OVERLOADING
    ColumnGetLengthMethodInfo               ,
#endif
    columnGetLength                         ,


-- ** getNNulls #method:getNNulls#

#if ENABLE_OVERLOADING
    ColumnGetNNullsMethodInfo               ,
#endif
    columnGetNNulls                         ,


-- ** getName #method:getName#

#if ENABLE_OVERLOADING
    ColumnGetNameMethodInfo                 ,
#endif
    columnGetName                           ,


-- ** newArray #method:newArray#

    columnNewArray                          ,


-- ** newChunkedArray #method:newChunkedArray#

    columnNewChunkedArray                   ,


-- ** slice #method:slice#

#if ENABLE_OVERLOADING
    ColumnSliceMethodInfo                   ,
#endif
    columnSlice                             ,




 -- * Properties
-- ** column #attr:column#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    ColumnColumnPropertyInfo                ,
#endif
#if ENABLE_OVERLOADING
    columnColumn                            ,
#endif
    constructColumnColumn                   ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.ChunkedArray as Arrow.ChunkedArray
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import {-# SOURCE #-} qualified GI.Arrow.Objects.Field as Arrow.Field
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Column = Column (ManagedPtr Column)
foreign import ccall "garrow_column_get_type"
    c_garrow_column_get_type :: IO GType

instance GObject Column where
    gobjectType _ = c_garrow_column_get_type
    

-- | Type class for types which can be safely cast to `Column`, for instance with `toColumn`.
class GObject o => IsColumn o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Column a) =>
    IsColumn a
#endif
instance IsColumn Column
instance GObject.Object.IsObject Column

-- | Cast to `Column`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toColumn :: (MonadIO m, IsColumn o) => o -> m Column
toColumn = liftIO . unsafeCastTo Column

-- | A convenience alias for `Nothing` :: `Maybe` `Column`.
noColumn :: Maybe Column
noColumn = Nothing

#if ENABLE_OVERLOADING
type family ResolveColumnMethod (t :: Symbol) (o :: *) :: * where
    ResolveColumnMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveColumnMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveColumnMethod "equal" o = ColumnEqualMethodInfo
    ResolveColumnMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveColumnMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveColumnMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveColumnMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveColumnMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveColumnMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveColumnMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveColumnMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveColumnMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveColumnMethod "slice" o = ColumnSliceMethodInfo
    ResolveColumnMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveColumnMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveColumnMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveColumnMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveColumnMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveColumnMethod "getData" o = ColumnGetDataMethodInfo
    ResolveColumnMethod "getDataType" o = ColumnGetDataTypeMethodInfo
    ResolveColumnMethod "getField" o = ColumnGetFieldMethodInfo
    ResolveColumnMethod "getLength" o = ColumnGetLengthMethodInfo
    ResolveColumnMethod "getNNulls" o = ColumnGetNNullsMethodInfo
    ResolveColumnMethod "getName" o = ColumnGetNameMethodInfo
    ResolveColumnMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveColumnMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveColumnMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveColumnMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveColumnMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveColumnMethod t Column, O.MethodInfo info Column p) => O.IsLabelProxy t (Column -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveColumnMethod t Column, O.MethodInfo info Column p) => O.IsLabel t (Column -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "column"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@column@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructColumnColumn :: (IsColumn o) => Ptr () -> IO (GValueConstruct o)
constructColumnColumn val = constructObjectPropertyPtr "column" val

#if ENABLE_OVERLOADING
data ColumnColumnPropertyInfo
instance AttrInfo ColumnColumnPropertyInfo where
    type AttrAllowedOps ColumnColumnPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint ColumnColumnPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint ColumnColumnPropertyInfo = IsColumn
    type AttrGetType ColumnColumnPropertyInfo = ()
    type AttrLabel ColumnColumnPropertyInfo = "column"
    type AttrOrigin ColumnColumnPropertyInfo = Column
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructColumnColumn
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Column
type instance O.AttributeList Column = ColumnAttributeList
type ColumnAttributeList = ('[ '("column", ColumnColumnPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
columnColumn :: AttrLabelProxy "column"
columnColumn = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Column = ColumnSignalList
type ColumnSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Column::new_array
-- method type : Constructor
-- Args : [Arg {argCName = "field", argType = TInterface (Name {namespace = "Arrow", name = "Field"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The metadata of the column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "array", argType = TInterface (Name {namespace = "Arrow", name = "Array"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The data of the column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Column"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_new_array" garrow_column_new_array :: 
    Ptr Arrow.Field.Field ->                -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    Ptr Arrow.Array.Array ->                -- array : TInterface (Name {namespace = "Arrow", name = "Array"})
    IO (Ptr Column)

{- |
/No description available in the introspection data./
-}
columnNewArray ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a, Arrow.Array.IsArray b) =>
    a
    {- ^ /@field@/: The metadata of the column. -}
    -> b
    {- ^ /@array@/: The data of the column. -}
    -> m Column
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Column.Column'. -}
columnNewArray field array = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    array' <- unsafeManagedPtrCastPtr array
    result <- garrow_column_new_array field' array'
    checkUnexpectedReturnNULL "columnNewArray" result
    result' <- (wrapObject Column) result
    touchManagedPtr field
    touchManagedPtr array
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Column::new_chunked_array
-- method type : Constructor
-- Args : [Arg {argCName = "field", argType = TInterface (Name {namespace = "Arrow", name = "Field"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The metadata of the column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "chunked_array", argType = TInterface (Name {namespace = "Arrow", name = "ChunkedArray"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The data of the column.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Column"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_new_chunked_array" garrow_column_new_chunked_array :: 
    Ptr Arrow.Field.Field ->                -- field : TInterface (Name {namespace = "Arrow", name = "Field"})
    Ptr Arrow.ChunkedArray.ChunkedArray ->  -- chunked_array : TInterface (Name {namespace = "Arrow", name = "ChunkedArray"})
    IO (Ptr Column)

{- |
/No description available in the introspection data./
-}
columnNewChunkedArray ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a, Arrow.ChunkedArray.IsChunkedArray b) =>
    a
    {- ^ /@field@/: The metadata of the column. -}
    -> b
    {- ^ /@chunkedArray@/: The data of the column. -}
    -> m Column
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Column.Column'. -}
columnNewChunkedArray field chunkedArray = liftIO $ do
    field' <- unsafeManagedPtrCastPtr field
    chunkedArray' <- unsafeManagedPtrCastPtr chunkedArray
    result <- garrow_column_new_chunked_array field' chunkedArray'
    checkUnexpectedReturnNULL "columnNewChunkedArray" result
    result' <- (wrapObject Column) result
    touchManagedPtr field
    touchManagedPtr chunkedArray
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Column::equal
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "column", argType = TInterface (Name {namespace = "Arrow", name = "Column"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowColumn.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "other_column", argType = TInterface (Name {namespace = "Arrow", name = "Column"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowColumn to be compared.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_equal" garrow_column_equal :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    Ptr Column ->                           -- other_column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
columnEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a, IsColumn b) =>
    a
    {- ^ /@column@/: A 'GI.Arrow.Objects.Column.Column'. -}
    -> b
    {- ^ /@otherColumn@/: A 'GI.Arrow.Objects.Column.Column' to be compared. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if both of them have the same data, 'False'
  otherwise. -}
columnEqual column otherColumn = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    otherColumn' <- unsafeManagedPtrCastPtr otherColumn
    result <- garrow_column_equal column' otherColumn'
    let result' = (/= 0) result
    touchManagedPtr column
    touchManagedPtr otherColumn
    return result'

#if ENABLE_OVERLOADING
data ColumnEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsColumn a, IsColumn b) => O.MethodInfo ColumnEqualMethodInfo a signature where
    overloadedMethod _ = columnEqual

#endif

-- method Column::get_data
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "column", argType = TInterface (Name {namespace = "Arrow", name = "Column"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowColumn.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "ChunkedArray"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_get_data" garrow_column_get_data :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO (Ptr Arrow.ChunkedArray.ChunkedArray)

{- |
/No description available in the introspection data./
-}
columnGetData ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    {- ^ /@column@/: A 'GI.Arrow.Objects.Column.Column'. -}
    -> m Arrow.ChunkedArray.ChunkedArray
    {- ^ __Returns:__ The data of the column. -}
columnGetData column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_data column'
    checkUnexpectedReturnNULL "columnGetData" result
    result' <- (wrapObject Arrow.ChunkedArray.ChunkedArray) result
    touchManagedPtr column
    return result'

#if ENABLE_OVERLOADING
data ColumnGetDataMethodInfo
instance (signature ~ (m Arrow.ChunkedArray.ChunkedArray), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetDataMethodInfo a signature where
    overloadedMethod _ = columnGetData

#endif

-- method Column::get_data_type
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "column", argType = TInterface (Name {namespace = "Arrow", name = "Column"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowColumn.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_get_data_type" garrow_column_get_data_type :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO (Ptr Arrow.DataType.DataType)

{- |
/No description available in the introspection data./
-}
columnGetDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    {- ^ /@column@/: A 'GI.Arrow.Objects.Column.Column'. -}
    -> m Arrow.DataType.DataType
    {- ^ __Returns:__ The data type of the column. -}
columnGetDataType column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_data_type column'
    checkUnexpectedReturnNULL "columnGetDataType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr column
    return result'

#if ENABLE_OVERLOADING
data ColumnGetDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetDataTypeMethodInfo a signature where
    overloadedMethod _ = columnGetDataType

#endif

-- method Column::get_field
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "column", argType = TInterface (Name {namespace = "Arrow", name = "Column"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowColumn.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Field"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_get_field" garrow_column_get_field :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO (Ptr Arrow.Field.Field)

{- |
/No description available in the introspection data./
-}
columnGetField ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    {- ^ /@column@/: A 'GI.Arrow.Objects.Column.Column'. -}
    -> m Arrow.Field.Field
    {- ^ __Returns:__ The metadata of the column. -}
columnGetField column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_field column'
    checkUnexpectedReturnNULL "columnGetField" result
    result' <- (wrapObject Arrow.Field.Field) result
    touchManagedPtr column
    return result'

#if ENABLE_OVERLOADING
data ColumnGetFieldMethodInfo
instance (signature ~ (m Arrow.Field.Field), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetFieldMethodInfo a signature where
    overloadedMethod _ = columnGetField

#endif

-- method Column::get_length
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "column", argType = TInterface (Name {namespace = "Arrow", name = "Column"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowColumn.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_get_length" garrow_column_get_length :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO Word64

{- |
/No description available in the introspection data./
-}
columnGetLength ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    {- ^ /@column@/: A 'GI.Arrow.Objects.Column.Column'. -}
    -> m Word64
    {- ^ __Returns:__ The number of data of the column. -}
columnGetLength column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_length column'
    touchManagedPtr column
    return result

#if ENABLE_OVERLOADING
data ColumnGetLengthMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetLengthMethodInfo a signature where
    overloadedMethod _ = columnGetLength

#endif

-- method Column::get_n_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "column", argType = TInterface (Name {namespace = "Arrow", name = "Column"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowColumn.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_get_n_nulls" garrow_column_get_n_nulls :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO Word64

{- |
/No description available in the introspection data./
-}
columnGetNNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    {- ^ /@column@/: A 'GI.Arrow.Objects.Column.Column'. -}
    -> m Word64
    {- ^ __Returns:__ The number of nulls of the column. -}
columnGetNNulls column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_n_nulls column'
    touchManagedPtr column
    return result

#if ENABLE_OVERLOADING
data ColumnGetNNullsMethodInfo
instance (signature ~ (m Word64), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetNNullsMethodInfo a signature where
    overloadedMethod _ = columnGetNNulls

#endif

-- method Column::get_name
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "column", argType = TInterface (Name {namespace = "Arrow", name = "Column"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowColumn.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_get_name" garrow_column_get_name :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    IO CString

{- |
/No description available in the introspection data./
-}
columnGetName ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    {- ^ /@column@/: A 'GI.Arrow.Objects.Column.Column'. -}
    -> m T.Text
    {- ^ __Returns:__ The name of the column. -}
columnGetName column = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_get_name column'
    checkUnexpectedReturnNULL "columnGetName" result
    result' <- cstringToText result
    touchManagedPtr column
    return result'

#if ENABLE_OVERLOADING
data ColumnGetNameMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsColumn a) => O.MethodInfo ColumnGetNameMethodInfo a signature where
    overloadedMethod _ = columnGetName

#endif

-- method Column::slice
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "column", argType = TInterface (Name {namespace = "Arrow", name = "Column"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowColumn.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "offset", argType = TBasicType TUInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The offset of sub #GArrowColumn.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "length", argType = TBasicType TUInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of sub #GArrowColumn.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Column"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_column_slice" garrow_column_slice :: 
    Ptr Column ->                           -- column : TInterface (Name {namespace = "Arrow", name = "Column"})
    Word64 ->                               -- offset : TBasicType TUInt64
    Word64 ->                               -- length : TBasicType TUInt64
    IO (Ptr Column)

{- |
/No description available in the introspection data./
-}
columnSlice ::
    (B.CallStack.HasCallStack, MonadIO m, IsColumn a) =>
    a
    {- ^ /@column@/: A 'GI.Arrow.Objects.Column.Column'. -}
    -> Word64
    {- ^ /@offset@/: The offset of sub 'GI.Arrow.Objects.Column.Column'. -}
    -> Word64
    {- ^ /@length@/: The length of sub 'GI.Arrow.Objects.Column.Column'. -}
    -> m Column
    {- ^ __Returns:__ The sub 'GI.Arrow.Objects.Column.Column'. It covers only from
  @offset@ to @offset + length@ range. The sub 'GI.Arrow.Objects.Column.Column' shares
  values with the base 'GI.Arrow.Objects.Column.Column'. -}
columnSlice column offset length_ = liftIO $ do
    column' <- unsafeManagedPtrCastPtr column
    result <- garrow_column_slice column' offset length_
    checkUnexpectedReturnNULL "columnSlice" result
    result' <- (wrapObject Column) result
    touchManagedPtr column
    return result'

#if ENABLE_OVERLOADING
data ColumnSliceMethodInfo
instance (signature ~ (Word64 -> Word64 -> m Column), MonadIO m, IsColumn a) => O.MethodInfo ColumnSliceMethodInfo a signature where
    overloadedMethod _ = columnSlice

#endif


