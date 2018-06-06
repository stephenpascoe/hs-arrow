

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Schema@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Schema
    ( 

-- * Exported types
    Schema(..)                              ,
    IsSchema                                ,
    toSchema                                ,
    noSchema                                ,


 -- * Methods
-- ** equal #method:equal#

#if ENABLE_OVERLOADING
    SchemaEqualMethodInfo                   ,
#endif
    schemaEqual                             ,


-- ** getField #method:getField#

#if ENABLE_OVERLOADING
    SchemaGetFieldMethodInfo                ,
#endif
    schemaGetField                          ,


-- ** getFieldByName #method:getFieldByName#

#if ENABLE_OVERLOADING
    SchemaGetFieldByNameMethodInfo          ,
#endif
    schemaGetFieldByName                    ,


-- ** getFields #method:getFields#

#if ENABLE_OVERLOADING
    SchemaGetFieldsMethodInfo               ,
#endif
    schemaGetFields                         ,


-- ** nFields #method:nFields#

#if ENABLE_OVERLOADING
    SchemaNFieldsMethodInfo                 ,
#endif
    schemaNFields                           ,


-- ** new #method:new#

    schemaNew                               ,


-- ** toString #method:toString#

#if ENABLE_OVERLOADING
    SchemaToStringMethodInfo                ,
#endif
    schemaToString                          ,




 -- * Properties
-- ** schema #attr:schema#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    SchemaSchemaPropertyInfo                ,
#endif
    constructSchemaSchema                   ,
#if ENABLE_OVERLOADING
    schemaSchema                            ,
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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Field as Arrow.Field
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Schema = Schema (ManagedPtr Schema)
foreign import ccall "garrow_schema_get_type"
    c_garrow_schema_get_type :: IO GType

instance GObject Schema where
    gobjectType _ = c_garrow_schema_get_type
    

-- | Type class for types which can be safely cast to `Schema`, for instance with `toSchema`.
class GObject o => IsSchema o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Schema a) =>
    IsSchema a
#endif
instance IsSchema Schema
instance GObject.Object.IsObject Schema

-- | Cast to `Schema`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toSchema :: (MonadIO m, IsSchema o) => o -> m Schema
toSchema = liftIO . unsafeCastTo Schema

-- | A convenience alias for `Nothing` :: `Maybe` `Schema`.
noSchema :: Maybe Schema
noSchema = Nothing

#if ENABLE_OVERLOADING
type family ResolveSchemaMethod (t :: Symbol) (o :: *) :: * where
    ResolveSchemaMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveSchemaMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveSchemaMethod "equal" o = SchemaEqualMethodInfo
    ResolveSchemaMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveSchemaMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveSchemaMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveSchemaMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveSchemaMethod "nFields" o = SchemaNFieldsMethodInfo
    ResolveSchemaMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveSchemaMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveSchemaMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveSchemaMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveSchemaMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveSchemaMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveSchemaMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveSchemaMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveSchemaMethod "toString" o = SchemaToStringMethodInfo
    ResolveSchemaMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveSchemaMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveSchemaMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveSchemaMethod "getField" o = SchemaGetFieldMethodInfo
    ResolveSchemaMethod "getFieldByName" o = SchemaGetFieldByNameMethodInfo
    ResolveSchemaMethod "getFields" o = SchemaGetFieldsMethodInfo
    ResolveSchemaMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveSchemaMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveSchemaMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveSchemaMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveSchemaMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveSchemaMethod t Schema, O.MethodInfo info Schema p) => O.IsLabelProxy t (Schema -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveSchemaMethod t Schema, O.MethodInfo info Schema p) => O.IsLabel t (Schema -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "schema"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@schema@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructSchemaSchema :: (IsSchema o) => Ptr () -> IO (GValueConstruct o)
constructSchemaSchema val = constructObjectPropertyPtr "schema" val

#if ENABLE_OVERLOADING
data SchemaSchemaPropertyInfo
instance AttrInfo SchemaSchemaPropertyInfo where
    type AttrAllowedOps SchemaSchemaPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint SchemaSchemaPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint SchemaSchemaPropertyInfo = IsSchema
    type AttrGetType SchemaSchemaPropertyInfo = ()
    type AttrLabel SchemaSchemaPropertyInfo = "schema"
    type AttrOrigin SchemaSchemaPropertyInfo = Schema
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructSchemaSchema
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Schema
type instance O.AttributeList Schema = SchemaAttributeList
type SchemaAttributeList = ('[ '("schema", SchemaSchemaPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
schemaSchema :: AttrLabelProxy "schema"
schemaSchema = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Schema = SchemaSignalList
type SchemaSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Schema::new
-- method type : Constructor
-- Args : [Arg {argCName = "fields", argType = TGList (TInterface (Name {namespace = "Arrow", name = "Field"})), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The fields of the schema.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Schema"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_schema_new" garrow_schema_new :: 
    Ptr (GList (Ptr Arrow.Field.Field)) ->  -- fields : TGList (TInterface (Name {namespace = "Arrow", name = "Field"}))
    IO (Ptr Schema)

{- |
/No description available in the introspection data./
-}
schemaNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Field.IsField a) =>
    [a]
    {- ^ /@fields@/: The fields of the schema. -}
    -> m Schema
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Schema.Schema'. -}
schemaNew fields = liftIO $ do
    fields' <- mapM unsafeManagedPtrCastPtr fields
    fields'' <- packGList fields'
    result <- garrow_schema_new fields''
    checkUnexpectedReturnNULL "schemaNew" result
    result' <- (wrapObject Schema) result
    mapM_ touchManagedPtr fields
    g_list_free fields''
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Schema::equal
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSchema.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "other_schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSchema to be compared.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_schema_equal" garrow_schema_equal :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Ptr Schema ->                           -- other_schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
schemaEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a, IsSchema b) =>
    a
    {- ^ /@schema@/: A 'GI.Arrow.Objects.Schema.Schema'. -}
    -> b
    {- ^ /@otherSchema@/: A 'GI.Arrow.Objects.Schema.Schema' to be compared. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if both of them have the same data, 'False'
  otherwise. -}
schemaEqual schema otherSchema = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    otherSchema' <- unsafeManagedPtrCastPtr otherSchema
    result <- garrow_schema_equal schema' otherSchema'
    let result' = (/= 0) result
    touchManagedPtr schema
    touchManagedPtr otherSchema
    return result'

#if ENABLE_OVERLOADING
data SchemaEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsSchema a, IsSchema b) => O.MethodInfo SchemaEqualMethodInfo a signature where
    overloadedMethod _ = schemaEqual

#endif

-- method Schema::get_field
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSchema.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TUInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target field.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Field"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_schema_get_field" garrow_schema_get_field :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    Word32 ->                               -- i : TBasicType TUInt
    IO (Ptr Arrow.Field.Field)

{- |
/No description available in the introspection data./
-}
schemaGetField ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    {- ^ /@schema@/: A 'GI.Arrow.Objects.Schema.Schema'. -}
    -> Word32
    {- ^ /@i@/: The index of the target field. -}
    -> m Arrow.Field.Field
    {- ^ __Returns:__ The i-th field of the schema. -}
schemaGetField schema i = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    result <- garrow_schema_get_field schema' i
    checkUnexpectedReturnNULL "schemaGetField" result
    result' <- (wrapObject Arrow.Field.Field) result
    touchManagedPtr schema
    return result'

#if ENABLE_OVERLOADING
data SchemaGetFieldMethodInfo
instance (signature ~ (Word32 -> m Arrow.Field.Field), MonadIO m, IsSchema a) => O.MethodInfo SchemaGetFieldMethodInfo a signature where
    overloadedMethod _ = schemaGetField

#endif

-- method Schema::get_field_by_name
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSchema.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "name", argType = TBasicType TUTF8, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The name of the field to be found.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Field"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_schema_get_field_by_name" garrow_schema_get_field_by_name :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    CString ->                              -- name : TBasicType TUTF8
    IO (Ptr Arrow.Field.Field)

{- |
/No description available in the introspection data./
-}
schemaGetFieldByName ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    {- ^ /@schema@/: A 'GI.Arrow.Objects.Schema.Schema'. -}
    -> T.Text
    {- ^ /@name@/: The name of the field to be found. -}
    -> m Arrow.Field.Field
    {- ^ __Returns:__ The found field or 'Nothing'. -}
schemaGetFieldByName schema name = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    name' <- textToCString name
    result <- garrow_schema_get_field_by_name schema' name'
    checkUnexpectedReturnNULL "schemaGetFieldByName" result
    result' <- (wrapObject Arrow.Field.Field) result
    touchManagedPtr schema
    freeMem name'
    return result'

#if ENABLE_OVERLOADING
data SchemaGetFieldByNameMethodInfo
instance (signature ~ (T.Text -> m Arrow.Field.Field), MonadIO m, IsSchema a) => O.MethodInfo SchemaGetFieldByNameMethodInfo a signature where
    overloadedMethod _ = schemaGetFieldByName

#endif

-- method Schema::get_fields
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSchema.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TGList (TInterface (Name {namespace = "Arrow", name = "Field"})))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_schema_get_fields" garrow_schema_get_fields :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    IO (Ptr (GList (Ptr Arrow.Field.Field)))

{- |
/No description available in the introspection data./
-}
schemaGetFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    {- ^ /@schema@/: A 'GI.Arrow.Objects.Schema.Schema'. -}
    -> m [Arrow.Field.Field]
    {- ^ __Returns:__ 
  The fields of the schema. -}
schemaGetFields schema = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    result <- garrow_schema_get_fields schema'
    result' <- unpackGList result
    result'' <- mapM (wrapObject Arrow.Field.Field) result'
    g_list_free result
    touchManagedPtr schema
    return result''

#if ENABLE_OVERLOADING
data SchemaGetFieldsMethodInfo
instance (signature ~ (m [Arrow.Field.Field]), MonadIO m, IsSchema a) => O.MethodInfo SchemaGetFieldsMethodInfo a signature where
    overloadedMethod _ = schemaGetFields

#endif

-- method Schema::n_fields
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSchema.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_schema_n_fields" garrow_schema_n_fields :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    IO Word32

{- |
/No description available in the introspection data./
-}
schemaNFields ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    {- ^ /@schema@/: A 'GI.Arrow.Objects.Schema.Schema'. -}
    -> m Word32
    {- ^ __Returns:__ The number of fields of the schema. -}
schemaNFields schema = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    result <- garrow_schema_n_fields schema'
    touchManagedPtr schema
    return result

#if ENABLE_OVERLOADING
data SchemaNFieldsMethodInfo
instance (signature ~ (m Word32), MonadIO m, IsSchema a) => O.MethodInfo SchemaNFieldsMethodInfo a signature where
    overloadedMethod _ = schemaNFields

#endif

-- method Schema::to_string
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "schema", argType = TInterface (Name {namespace = "Arrow", name = "Schema"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowSchema.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_schema_to_string" garrow_schema_to_string :: 
    Ptr Schema ->                           -- schema : TInterface (Name {namespace = "Arrow", name = "Schema"})
    IO CString

{- |
/No description available in the introspection data./
-}
schemaToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsSchema a) =>
    a
    {- ^ /@schema@/: A 'GI.Arrow.Objects.Schema.Schema'. -}
    -> m T.Text
    {- ^ __Returns:__ The string representation of the schema. -}
schemaToString schema = liftIO $ do
    schema' <- unsafeManagedPtrCastPtr schema
    result <- garrow_schema_to_string schema'
    checkUnexpectedReturnNULL "schemaToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr schema
    return result'

#if ENABLE_OVERLOADING
data SchemaToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsSchema a) => O.MethodInfo SchemaToStringMethodInfo a signature where
    overloadedMethod _ = schemaToString

#endif


