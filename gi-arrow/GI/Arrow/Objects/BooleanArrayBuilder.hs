

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::BooleanBuilder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.BooleanArrayBuilder
    ( 

-- * Exported types
    BooleanArrayBuilder(..)                 ,
    IsBooleanArrayBuilder                   ,
    toBooleanArrayBuilder                   ,
    noBooleanArrayBuilder                   ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    BooleanArrayBuilderAppendMethodInfo     ,
#endif
    booleanArrayBuilderAppend               ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    BooleanArrayBuilderAppendNullMethodInfo ,
#endif
    booleanArrayBuilderAppendNull           ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    BooleanArrayBuilderAppendNullsMethodInfo,
#endif
    booleanArrayBuilderAppendNulls          ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    BooleanArrayBuilderAppendValuesMethodInfo,
#endif
    booleanArrayBuilderAppendValues         ,


-- ** new #method:new#

    booleanArrayBuilderNew                  ,




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
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype BooleanArrayBuilder = BooleanArrayBuilder (ManagedPtr BooleanArrayBuilder)
foreign import ccall "garrow_boolean_array_builder_get_type"
    c_garrow_boolean_array_builder_get_type :: IO GType

instance GObject BooleanArrayBuilder where
    gobjectType _ = c_garrow_boolean_array_builder_get_type
    

-- | Type class for types which can be safely cast to `BooleanArrayBuilder`, for instance with `toBooleanArrayBuilder`.
class GObject o => IsBooleanArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError BooleanArrayBuilder a) =>
    IsBooleanArrayBuilder a
#endif
instance IsBooleanArrayBuilder BooleanArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder BooleanArrayBuilder
instance GObject.Object.IsObject BooleanArrayBuilder

-- | Cast to `BooleanArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toBooleanArrayBuilder :: (MonadIO m, IsBooleanArrayBuilder o) => o -> m BooleanArrayBuilder
toBooleanArrayBuilder = liftIO . unsafeCastTo BooleanArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `BooleanArrayBuilder`.
noBooleanArrayBuilder :: Maybe BooleanArrayBuilder
noBooleanArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveBooleanArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveBooleanArrayBuilderMethod "append" o = BooleanArrayBuilderAppendMethodInfo
    ResolveBooleanArrayBuilderMethod "appendNull" o = BooleanArrayBuilderAppendNullMethodInfo
    ResolveBooleanArrayBuilderMethod "appendNulls" o = BooleanArrayBuilderAppendNullsMethodInfo
    ResolveBooleanArrayBuilderMethod "appendValues" o = BooleanArrayBuilderAppendValuesMethodInfo
    ResolveBooleanArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveBooleanArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveBooleanArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveBooleanArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveBooleanArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveBooleanArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveBooleanArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveBooleanArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveBooleanArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveBooleanArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveBooleanArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveBooleanArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveBooleanArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveBooleanArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveBooleanArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveBooleanArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveBooleanArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveBooleanArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveBooleanArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveBooleanArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveBooleanArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveBooleanArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveBooleanArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveBooleanArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveBooleanArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveBooleanArrayBuilderMethod t BooleanArrayBuilder, O.MethodInfo info BooleanArrayBuilder p) => O.IsLabelProxy t (BooleanArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveBooleanArrayBuilderMethod t BooleanArrayBuilder, O.MethodInfo info BooleanArrayBuilder p) => O.IsLabel t (BooleanArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList BooleanArrayBuilder
type instance O.AttributeList BooleanArrayBuilder = BooleanArrayBuilderAttributeList
type BooleanArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList BooleanArrayBuilder = BooleanArrayBuilderSignalList
type BooleanArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method BooleanArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "BooleanArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_boolean_array_builder_new" garrow_boolean_array_builder_new :: 
    IO (Ptr BooleanArrayBuilder)

{- |
/No description available in the introspection data./
-}
booleanArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m BooleanArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.BooleanArrayBuilder.BooleanArrayBuilder'. -}
booleanArrayBuilderNew  = liftIO $ do
    result <- garrow_boolean_array_builder_new
    checkUnexpectedReturnNULL "booleanArrayBuilderNew" result
    result' <- (wrapObject BooleanArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method BooleanArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "BooleanArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBooleanArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TBoolean, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A boolean value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_boolean_array_builder_append" garrow_boolean_array_builder_append :: 
    Ptr BooleanArrayBuilder ->              -- builder : TInterface (Name {namespace = "Arrow", name = "BooleanArrayBuilder"})
    CInt ->                                 -- value : TBasicType TBoolean
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
booleanArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsBooleanArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.BooleanArrayBuilder.BooleanArrayBuilder'. -}
    -> Bool
    {- ^ /@value@/: A boolean value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
booleanArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    let value' = (fromIntegral . fromEnum) value
    onException (do
        _ <- propagateGError $ garrow_boolean_array_builder_append builder' value'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data BooleanArrayBuilderAppendMethodInfo
instance (signature ~ (Bool -> m ()), MonadIO m, IsBooleanArrayBuilder a) => O.MethodInfo BooleanArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = booleanArrayBuilderAppend

#endif

-- method BooleanArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "BooleanArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBooleanArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_boolean_array_builder_append_null" garrow_boolean_array_builder_append_null :: 
    Ptr BooleanArrayBuilder ->              -- builder : TInterface (Name {namespace = "Arrow", name = "BooleanArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
booleanArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsBooleanArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.BooleanArrayBuilder.BooleanArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
booleanArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_boolean_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data BooleanArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsBooleanArrayBuilder a) => O.MethodInfo BooleanArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = booleanArrayBuilderAppendNull

#endif

-- method BooleanArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "BooleanArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBooleanArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_boolean_array_builder_append_nulls" garrow_boolean_array_builder_append_nulls :: 
    Ptr BooleanArrayBuilder ->              -- builder : TInterface (Name {namespace = "Arrow", name = "BooleanArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
booleanArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsBooleanArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.BooleanArrayBuilder.BooleanArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
booleanArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_boolean_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data BooleanArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsBooleanArrayBuilder a) => O.MethodInfo BooleanArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = booleanArrayBuilderAppendNulls

#endif

-- method BooleanArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "BooleanArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBooleanArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of boolean.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_boolean_array_builder_append_values" garrow_boolean_array_builder_append_values :: 
    Ptr BooleanArrayBuilder ->              -- builder : TInterface (Name {namespace = "Arrow", name = "BooleanArrayBuilder"})
    Ptr CInt ->                             -- values : TCArray False (-1) 2 (TBasicType TBoolean)
    Int64 ->                                -- values_length : TBasicType TInt64
    Ptr CInt ->                             -- is_valids : TCArray False (-1) 4 (TBasicType TBoolean)
    Int64 ->                                -- is_valids_length : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple values at once. It\'s more efficient than multiple
@append()@ and @append_null()@ calls.

@since 0.8.0
-}
booleanArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsBooleanArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.BooleanArrayBuilder.BooleanArrayBuilder'. -}
    -> [Bool]
    {- ^ /@values@/: The array of boolean. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
booleanArrayBuilderAppendValues builder values isValids = liftIO $ do
    let isValidsLength = case isValids of
            Nothing -> 0
            Just jIsValids -> fromIntegral $ length jIsValids
    let valuesLength = fromIntegral $ length values
    builder' <- unsafeManagedPtrCastPtr builder
    values' <- (packMapStorableArray (fromIntegral . fromEnum)) values
    maybeIsValids <- case isValids of
        Nothing -> return nullPtr
        Just jIsValids -> do
            jIsValids' <- (packMapStorableArray (fromIntegral . fromEnum)) jIsValids
            return jIsValids'
    onException (do
        _ <- propagateGError $ garrow_boolean_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data BooleanArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Bool] -> Maybe ([Bool]) -> m ()), MonadIO m, IsBooleanArrayBuilder a) => O.MethodInfo BooleanArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = booleanArrayBuilderAppendValues

#endif


