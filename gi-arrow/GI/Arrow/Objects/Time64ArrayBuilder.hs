

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Time64Builder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Time64ArrayBuilder
    ( 

-- * Exported types
    Time64ArrayBuilder(..)                  ,
    IsTime64ArrayBuilder                    ,
    toTime64ArrayBuilder                    ,
    noTime64ArrayBuilder                    ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    Time64ArrayBuilderAppendMethodInfo      ,
#endif
    time64ArrayBuilderAppend                ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    Time64ArrayBuilderAppendNullMethodInfo  ,
#endif
    time64ArrayBuilderAppendNull            ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    Time64ArrayBuilderAppendNullsMethodInfo ,
#endif
    time64ArrayBuilderAppendNulls           ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    Time64ArrayBuilderAppendValuesMethodInfo,
#endif
    time64ArrayBuilderAppendValues          ,


-- ** new #method:new#

    time64ArrayBuilderNew                   ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.Time64DataType as Arrow.Time64DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Time64ArrayBuilder = Time64ArrayBuilder (ManagedPtr Time64ArrayBuilder)
foreign import ccall "garrow_time64_array_builder_get_type"
    c_garrow_time64_array_builder_get_type :: IO GType

instance GObject Time64ArrayBuilder where
    gobjectType _ = c_garrow_time64_array_builder_get_type
    

-- | Type class for types which can be safely cast to `Time64ArrayBuilder`, for instance with `toTime64ArrayBuilder`.
class GObject o => IsTime64ArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Time64ArrayBuilder a) =>
    IsTime64ArrayBuilder a
#endif
instance IsTime64ArrayBuilder Time64ArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder Time64ArrayBuilder
instance GObject.Object.IsObject Time64ArrayBuilder

-- | Cast to `Time64ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTime64ArrayBuilder :: (MonadIO m, IsTime64ArrayBuilder o) => o -> m Time64ArrayBuilder
toTime64ArrayBuilder = liftIO . unsafeCastTo Time64ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `Time64ArrayBuilder`.
noTime64ArrayBuilder :: Maybe Time64ArrayBuilder
noTime64ArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveTime64ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveTime64ArrayBuilderMethod "append" o = Time64ArrayBuilderAppendMethodInfo
    ResolveTime64ArrayBuilderMethod "appendNull" o = Time64ArrayBuilderAppendNullMethodInfo
    ResolveTime64ArrayBuilderMethod "appendNulls" o = Time64ArrayBuilderAppendNullsMethodInfo
    ResolveTime64ArrayBuilderMethod "appendValues" o = Time64ArrayBuilderAppendValuesMethodInfo
    ResolveTime64ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTime64ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTime64ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveTime64ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTime64ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTime64ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTime64ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTime64ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTime64ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTime64ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTime64ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTime64ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTime64ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTime64ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTime64ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTime64ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTime64ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTime64ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTime64ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTime64ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTime64ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveTime64ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveTime64ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTime64ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTime64ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTime64ArrayBuilderMethod t Time64ArrayBuilder, O.MethodInfo info Time64ArrayBuilder p) => O.IsLabelProxy t (Time64ArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTime64ArrayBuilderMethod t Time64ArrayBuilder, O.MethodInfo info Time64ArrayBuilder p) => O.IsLabel t (Time64ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Time64ArrayBuilder
type instance O.AttributeList Time64ArrayBuilder = Time64ArrayBuilderAttributeList
type Time64ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Time64ArrayBuilder = Time64ArrayBuilderSignalList
type Time64ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Time64ArrayBuilder::new
-- method type : Constructor
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "Time64DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime64DataType.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Time64ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_time64_array_builder_new" garrow_time64_array_builder_new :: 
    Ptr Arrow.Time64DataType.Time64DataType -> -- data_type : TInterface (Name {namespace = "Arrow", name = "Time64DataType"})
    IO (Ptr Time64ArrayBuilder)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time64ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.Time64DataType.IsTime64DataType a) =>
    a
    {- ^ /@dataType@/: A 'GI.Arrow.Objects.Time64DataType.Time64DataType'. -}
    -> m Time64ArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Time64ArrayBuilder.Time64ArrayBuilder'. -}
time64ArrayBuilderNew dataType = liftIO $ do
    dataType' <- unsafeManagedPtrCastPtr dataType
    result <- garrow_time64_array_builder_new dataType'
    checkUnexpectedReturnNULL "time64ArrayBuilderNew" result
    result' <- (wrapObject Time64ArrayBuilder) result
    touchManagedPtr dataType
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Time64ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Time64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of milliseconds since UNIX epoch in signed 64bit integer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time64_array_builder_append" garrow_time64_array_builder_append :: 
    Ptr Time64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Time64ArrayBuilder"})
    Int64 ->                                -- value : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time64ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Time64ArrayBuilder.Time64ArrayBuilder'. -}
    -> Int64
    {- ^ /@value@/: The number of milliseconds since UNIX epoch in signed 64bit integer. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
time64ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_time64_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Time64ArrayBuilderAppendMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsTime64ArrayBuilder a) => O.MethodInfo Time64ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = time64ArrayBuilderAppend

#endif

-- method Time64ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Time64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time64_array_builder_append_null" garrow_time64_array_builder_append_null :: 
    Ptr Time64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Time64ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.7.0
-}
time64ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Time64ArrayBuilder.Time64ArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
time64ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_time64_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Time64ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsTime64ArrayBuilder a) => O.MethodInfo Time64ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = time64ArrayBuilderAppendNull

#endif

-- method Time64ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Time64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time64_array_builder_append_nulls" garrow_time64_array_builder_append_nulls :: 
    Ptr Time64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Time64ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
time64ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Time64ArrayBuilder.Time64ArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
time64ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_time64_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Time64ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsTime64ArrayBuilder a) => O.MethodInfo Time64ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = time64ArrayBuilderAppendNulls

#endif

-- method Time64ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Time64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTime64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TInt64), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of\n  the number of milliseconds since UNIX epoch in signed 64bit integer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_time64_array_builder_append_values" garrow_time64_array_builder_append_values :: 
    Ptr Time64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Time64ArrayBuilder"})
    Ptr Int64 ->                            -- values : TCArray False (-1) 2 (TBasicType TInt64)
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
time64ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsTime64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Time64ArrayBuilder.Time64ArrayBuilder'. -}
    -> [Int64]
    {- ^ /@values@/: The array of
  the number of milliseconds since UNIX epoch in signed 64bit integer. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
time64ArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_time64_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data Time64ArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Int64] -> Maybe ([Bool]) -> m ()), MonadIO m, IsTime64ArrayBuilder a) => O.MethodInfo Time64ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = time64ArrayBuilderAppendValues

#endif


