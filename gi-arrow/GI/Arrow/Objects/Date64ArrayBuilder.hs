

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Date64Builder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Date64ArrayBuilder
    ( 

-- * Exported types
    Date64ArrayBuilder(..)                  ,
    IsDate64ArrayBuilder                    ,
    toDate64ArrayBuilder                    ,
    noDate64ArrayBuilder                    ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    Date64ArrayBuilderAppendMethodInfo      ,
#endif
    date64ArrayBuilderAppend                ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    Date64ArrayBuilderAppendNullMethodInfo  ,
#endif
    date64ArrayBuilderAppendNull            ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    Date64ArrayBuilderAppendNullsMethodInfo ,
#endif
    date64ArrayBuilderAppendNulls           ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    Date64ArrayBuilderAppendValuesMethodInfo,
#endif
    date64ArrayBuilderAppendValues          ,


-- ** new #method:new#

    date64ArrayBuilderNew                   ,




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
newtype Date64ArrayBuilder = Date64ArrayBuilder (ManagedPtr Date64ArrayBuilder)
foreign import ccall "garrow_date64_array_builder_get_type"
    c_garrow_date64_array_builder_get_type :: IO GType

instance GObject Date64ArrayBuilder where
    gobjectType _ = c_garrow_date64_array_builder_get_type
    

-- | Type class for types which can be safely cast to `Date64ArrayBuilder`, for instance with `toDate64ArrayBuilder`.
class GObject o => IsDate64ArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Date64ArrayBuilder a) =>
    IsDate64ArrayBuilder a
#endif
instance IsDate64ArrayBuilder Date64ArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder Date64ArrayBuilder
instance GObject.Object.IsObject Date64ArrayBuilder

-- | Cast to `Date64ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDate64ArrayBuilder :: (MonadIO m, IsDate64ArrayBuilder o) => o -> m Date64ArrayBuilder
toDate64ArrayBuilder = liftIO . unsafeCastTo Date64ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `Date64ArrayBuilder`.
noDate64ArrayBuilder :: Maybe Date64ArrayBuilder
noDate64ArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveDate64ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveDate64ArrayBuilderMethod "append" o = Date64ArrayBuilderAppendMethodInfo
    ResolveDate64ArrayBuilderMethod "appendNull" o = Date64ArrayBuilderAppendNullMethodInfo
    ResolveDate64ArrayBuilderMethod "appendNulls" o = Date64ArrayBuilderAppendNullsMethodInfo
    ResolveDate64ArrayBuilderMethod "appendValues" o = Date64ArrayBuilderAppendValuesMethodInfo
    ResolveDate64ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDate64ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDate64ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveDate64ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDate64ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDate64ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDate64ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDate64ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDate64ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDate64ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDate64ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDate64ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDate64ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDate64ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDate64ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDate64ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDate64ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDate64ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDate64ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDate64ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDate64ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveDate64ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveDate64ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDate64ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDate64ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDate64ArrayBuilderMethod t Date64ArrayBuilder, O.MethodInfo info Date64ArrayBuilder p) => O.IsLabelProxy t (Date64ArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveDate64ArrayBuilderMethod t Date64ArrayBuilder, O.MethodInfo info Date64ArrayBuilder p) => O.IsLabel t (Date64ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Date64ArrayBuilder
type instance O.AttributeList Date64ArrayBuilder = Date64ArrayBuilderAttributeList
type Date64ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Date64ArrayBuilder = Date64ArrayBuilderSignalList
type Date64ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Date64ArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Date64ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_date64_array_builder_new" garrow_date64_array_builder_new :: 
    IO (Ptr Date64ArrayBuilder)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
date64ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Date64ArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Date64ArrayBuilder.Date64ArrayBuilder'. -}
date64ArrayBuilderNew  = liftIO $ do
    result <- garrow_date64_array_builder_new
    checkUnexpectedReturnNULL "date64ArrayBuilderNew" result
    result' <- (wrapObject Date64ArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Date64ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Date64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDate64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of milliseconds since UNIX epoch in signed 64bit integer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_date64_array_builder_append" garrow_date64_array_builder_append :: 
    Ptr Date64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Date64ArrayBuilder"})
    Int64 ->                                -- value : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.7.0
-}
date64ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsDate64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Date64ArrayBuilder.Date64ArrayBuilder'. -}
    -> Int64
    {- ^ /@value@/: The number of milliseconds since UNIX epoch in signed 64bit integer. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
date64ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_date64_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Date64ArrayBuilderAppendMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsDate64ArrayBuilder a) => O.MethodInfo Date64ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = date64ArrayBuilderAppend

#endif

-- method Date64ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Date64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDate64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_date64_array_builder_append_null" garrow_date64_array_builder_append_null :: 
    Ptr Date64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Date64ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.7.0
-}
date64ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsDate64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Date64ArrayBuilder.Date64ArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
date64ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_date64_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Date64ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsDate64ArrayBuilder a) => O.MethodInfo Date64ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = date64ArrayBuilderAppendNull

#endif

-- method Date64ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Date64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDate64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_date64_array_builder_append_nulls" garrow_date64_array_builder_append_nulls :: 
    Ptr Date64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Date64ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
date64ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsDate64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Date64ArrayBuilder.Date64ArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
date64ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_date64_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Date64ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsDate64ArrayBuilder a) => O.MethodInfo Date64ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = date64ArrayBuilderAppendNulls

#endif

-- method Date64ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Date64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDate64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TInt64), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of\n  the number of milliseconds since UNIX epoch in signed 64bit integer.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_date64_array_builder_append_values" garrow_date64_array_builder_append_values :: 
    Ptr Date64ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "Date64ArrayBuilder"})
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
date64ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsDate64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Date64ArrayBuilder.Date64ArrayBuilder'. -}
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
date64ArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_date64_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data Date64ArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Int64] -> Maybe ([Bool]) -> m ()), MonadIO m, IsDate64ArrayBuilder a) => O.MethodInfo Date64ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = date64ArrayBuilderAppendValues

#endif


