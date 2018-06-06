

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Time32Builder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Time32ArrayBuilder
    ( 

-- * Exported types
    Time32ArrayBuilder(..)                  ,
    IsTime32ArrayBuilder                    ,
    toTime32ArrayBuilder                    ,
    noTime32ArrayBuilder                    ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    Time32ArrayBuilderAppendMethodInfo      ,
#endif
    time32ArrayBuilderAppend                ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    Time32ArrayBuilderAppendNullMethodInfo  ,
#endif
    time32ArrayBuilderAppendNull            ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    Time32ArrayBuilderAppendNullsMethodInfo ,
#endif
    time32ArrayBuilderAppendNulls           ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    Time32ArrayBuilderAppendValuesMethodInfo,
#endif
    time32ArrayBuilderAppendValues          ,


-- ** new #method:new#

    time32ArrayBuilderNew                   ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Time32DataType as Arrow.Time32DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Time32ArrayBuilder = Time32ArrayBuilder (ManagedPtr Time32ArrayBuilder)
foreign import ccall "garrow_time32_array_builder_get_type"
    c_garrow_time32_array_builder_get_type :: IO GType

instance GObject Time32ArrayBuilder where
    gobjectType _ = c_garrow_time32_array_builder_get_type
    

-- | Type class for types which can be safely cast to `Time32ArrayBuilder`, for instance with `toTime32ArrayBuilder`.
class GObject o => IsTime32ArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Time32ArrayBuilder a) =>
    IsTime32ArrayBuilder a
#endif
instance IsTime32ArrayBuilder Time32ArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder Time32ArrayBuilder
instance GObject.Object.IsObject Time32ArrayBuilder

-- | Cast to `Time32ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTime32ArrayBuilder :: (MonadIO m, IsTime32ArrayBuilder o) => o -> m Time32ArrayBuilder
toTime32ArrayBuilder = liftIO . unsafeCastTo Time32ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `Time32ArrayBuilder`.
noTime32ArrayBuilder :: Maybe Time32ArrayBuilder
noTime32ArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveTime32ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveTime32ArrayBuilderMethod "append" o = Time32ArrayBuilderAppendMethodInfo
    ResolveTime32ArrayBuilderMethod "appendNull" o = Time32ArrayBuilderAppendNullMethodInfo
    ResolveTime32ArrayBuilderMethod "appendNulls" o = Time32ArrayBuilderAppendNullsMethodInfo
    ResolveTime32ArrayBuilderMethod "appendValues" o = Time32ArrayBuilderAppendValuesMethodInfo
    ResolveTime32ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTime32ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTime32ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveTime32ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTime32ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTime32ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTime32ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTime32ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTime32ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTime32ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTime32ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTime32ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTime32ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTime32ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTime32ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTime32ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTime32ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTime32ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTime32ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTime32ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTime32ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveTime32ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveTime32ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTime32ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTime32ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTime32ArrayBuilderMethod t Time32ArrayBuilder, O.MethodInfo info Time32ArrayBuilder p) => O.IsLabelProxy t (Time32ArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTime32ArrayBuilderMethod t Time32ArrayBuilder, O.MethodInfo info Time32ArrayBuilder p) => O.IsLabel t (Time32ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Time32ArrayBuilder
type instance O.AttributeList Time32ArrayBuilder = Time32ArrayBuilderAttributeList
type Time32ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Time32ArrayBuilder = Time32ArrayBuilderSignalList
type Time32ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Time32ArrayBuilder::new
-- method type : Constructor
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "Time32DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime32DataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Time32ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_time32_array_builder_new" garrow_time32_array_builder_new :: 
    Ptr Arrow.Time32DataType.Time32DataType -> -- data_type : TInterface (Name {namespace = "Arrow", name = "Time32DataType"})
    IO (Ptr Time32ArrayBuilder)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time32ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Time32DataType.IsTime32DataType a) =>
    a
    {- ^ /@dataType@/: A 'GI.Arrow.Objects.Time32DataType.Time32DataType'. -}
    -> m Time32ArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Time32ArrayBuilder.Time32ArrayBuilder'. -}
time32ArrayBuilderNew dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_time32_array_builder_new dataType'
    checkUnexpectedReturnNULL "time32ArrayBuilderNew" result
    result' <- (wrapObject Time32ArrayBuilder) result
    touchManagedPtr dataType
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Time32ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Time32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TInt32, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of days since UNIX epoch in signed 32bit integer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time32_array_builder_append" garrow_time32_array_builder_append :: 
    Ptr Time32ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Time32ArrayBuilder"})
    Int32 ->                                -- value : TBasicType TInt32
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time32ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Time32ArrayBuilder.Time32ArrayBuilder'. -}
    -> Int32
    {- ^ /@value@/: The number of days since UNIX epoch in signed 32bit integer. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
time32ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_time32_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Time32ArrayBuilderAppendMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsTime32ArrayBuilder a) => O.MethodInfo Time32ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = time32ArrayBuilderAppend

#endif

-- method Time32ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Time32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time32_array_builder_append_null" garrow_time32_array_builder_append_null :: 
    Ptr Time32ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Time32ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time32ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Time32ArrayBuilder.Time32ArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
time32ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_time32_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Time32ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsTime32ArrayBuilder a) => O.MethodInfo Time32ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = time32ArrayBuilderAppendNull

#endif

-- method Time32ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Time32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time32_array_builder_append_nulls" garrow_time32_array_builder_append_nulls :: 
    Ptr Time32ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Time32ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
time32ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Time32ArrayBuilder.Time32ArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
time32ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_time32_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Time32ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsTime32ArrayBuilder a) => O.MethodInfo Time32ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = time32ArrayBuilderAppendNulls

#endif

-- method Time32ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Time32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TInt32), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of\n  the number of days since UNIX epoch in signed 32bit integer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time32_array_builder_append_values" garrow_time32_array_builder_append_values :: 
    Ptr Time32ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Time32ArrayBuilder"})
    Ptr Int32 ->                            -- values : TCArray False (-1) 2 (TBasicType TInt32)
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
time32ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Time32ArrayBuilder.Time32ArrayBuilder'. -}
    -> [Int32]
    {- ^ /@values@/: The array of
  the number of days since UNIX epoch in signed 32bit integer. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
time32ArrayBuilderAppendValues builder values isValids = liftIO $ do
    let isValidsLength = case isValids of
            Nothing -> 0
            Just jIsValids -> fromIntegral $ length jIsValids
    let valuesLength = fromIntegral $ length values
    builder' <- unsafeManagedPtrCastPtr builder
    values' <- packStorableArray values
    maybeIsValids <- case isValids of
        Nothing -> return nullPtr
        Just jIsValids -> do
            jIsValids' <- (packMapStorableArray (fromIntegral . fromEnum)) jIsValids
            return jIsValids'
    onException (do
        _ <- propagateGError $ garrow_time32_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data Time32ArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Int32] -> Maybe ([Bool]) -> m ()), MonadIO m, IsTime32ArrayBuilder a) => O.MethodInfo Time32ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = time32ArrayBuilderAppendValues

#endif


