

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Int64Builder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Int64ArrayBuilder
    ( 

-- * Exported types
    Int64ArrayBuilder(..)                   ,
    IsInt64ArrayBuilder                     ,
    toInt64ArrayBuilder                     ,
    noInt64ArrayBuilder                     ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    Int64ArrayBuilderAppendMethodInfo       ,
#endif
    int64ArrayBuilderAppend                 ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    Int64ArrayBuilderAppendNullMethodInfo   ,
#endif
    int64ArrayBuilderAppendNull             ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    Int64ArrayBuilderAppendNullsMethodInfo  ,
#endif
    int64ArrayBuilderAppendNulls            ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    Int64ArrayBuilderAppendValuesMethodInfo ,
#endif
    int64ArrayBuilderAppendValues           ,


-- ** new #method:new#

    int64ArrayBuilderNew                    ,




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
newtype Int64ArrayBuilder = Int64ArrayBuilder (ManagedPtr Int64ArrayBuilder)
foreign import ccall "garrow_int64_array_builder_get_type"
    c_garrow_int64_array_builder_get_type :: IO GType

instance GObject Int64ArrayBuilder where
    gobjectType _ = c_garrow_int64_array_builder_get_type
    

-- | Type class for types which can be safely cast to `Int64ArrayBuilder`, for instance with `toInt64ArrayBuilder`.
class GObject o => IsInt64ArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Int64ArrayBuilder a) =>
    IsInt64ArrayBuilder a
#endif
instance IsInt64ArrayBuilder Int64ArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder Int64ArrayBuilder
instance GObject.Object.IsObject Int64ArrayBuilder

-- | Cast to `Int64ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt64ArrayBuilder :: (MonadIO m, IsInt64ArrayBuilder o) => o -> m Int64ArrayBuilder
toInt64ArrayBuilder = liftIO . unsafeCastTo Int64ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `Int64ArrayBuilder`.
noInt64ArrayBuilder :: Maybe Int64ArrayBuilder
noInt64ArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveInt64ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt64ArrayBuilderMethod "append" o = Int64ArrayBuilderAppendMethodInfo
    ResolveInt64ArrayBuilderMethod "appendNull" o = Int64ArrayBuilderAppendNullMethodInfo
    ResolveInt64ArrayBuilderMethod "appendNulls" o = Int64ArrayBuilderAppendNullsMethodInfo
    ResolveInt64ArrayBuilderMethod "appendValues" o = Int64ArrayBuilderAppendValuesMethodInfo
    ResolveInt64ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt64ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt64ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveInt64ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt64ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt64ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt64ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt64ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt64ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt64ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt64ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt64ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt64ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt64ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt64ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt64ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt64ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt64ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt64ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt64ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt64ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveInt64ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveInt64ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt64ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt64ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt64ArrayBuilderMethod t Int64ArrayBuilder, O.MethodInfo info Int64ArrayBuilder p) => O.IsLabelProxy t (Int64ArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveInt64ArrayBuilderMethod t Int64ArrayBuilder, O.MethodInfo info Int64ArrayBuilder p) => O.IsLabel t (Int64ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Int64ArrayBuilder
type instance O.AttributeList Int64ArrayBuilder = Int64ArrayBuilderAttributeList
type Int64ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Int64ArrayBuilder = Int64ArrayBuilderSignalList
type Int64ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int64ArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Int64ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int64_array_builder_new" garrow_int64_array_builder_new :: 
    IO (Ptr Int64ArrayBuilder)

{- |
/No description available in the introspection data./
-}
int64ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Int64ArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Int64ArrayBuilder.Int64ArrayBuilder'. -}
int64ArrayBuilderNew  = liftIO $ do
    result <- garrow_int64_array_builder_new
    checkUnexpectedReturnNULL "int64ArrayBuilderNew" result
    result' <- (wrapObject Int64ArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Int64ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A int64 value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int64_array_builder_append" garrow_int64_array_builder_append :: 
    Ptr Int64ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int64ArrayBuilder"})
    Int64 ->                                -- value : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
int64ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int64ArrayBuilder.Int64ArrayBuilder'. -}
    -> Int64
    {- ^ /@value@/: A int64 value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int64ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int64_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int64ArrayBuilderAppendMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsInt64ArrayBuilder a) => O.MethodInfo Int64ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = int64ArrayBuilderAppend

#endif

-- method Int64ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int64_array_builder_append_null" garrow_int64_array_builder_append_null :: 
    Ptr Int64ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int64ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
int64ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int64ArrayBuilder.Int64ArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int64ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int64_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int64ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsInt64ArrayBuilder a) => O.MethodInfo Int64ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = int64ArrayBuilderAppendNull

#endif

-- method Int64ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int64_array_builder_append_nulls" garrow_int64_array_builder_append_nulls :: 
    Ptr Int64ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int64ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
int64ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int64ArrayBuilder.Int64ArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int64ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int64_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int64ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsInt64ArrayBuilder a) => O.MethodInfo Int64ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = int64ArrayBuilderAppendNulls

#endif

-- method Int64ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int64ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt64ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TInt64), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of int64.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int64_array_builder_append_values" garrow_int64_array_builder_append_values :: 
    Ptr Int64ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int64ArrayBuilder"})
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
int64ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt64ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int64ArrayBuilder.Int64ArrayBuilder'. -}
    -> [Int64]
    {- ^ /@values@/: The array of int64. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int64ArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_int64_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data Int64ArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Int64] -> Maybe ([Bool]) -> m ()), MonadIO m, IsInt64ArrayBuilder a) => O.MethodInfo Int64ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = int64ArrayBuilderAppendValues

#endif


