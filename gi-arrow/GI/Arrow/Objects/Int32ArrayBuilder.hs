

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Int32Builder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Int32ArrayBuilder
    ( 

-- * Exported types
    Int32ArrayBuilder(..)                   ,
    IsInt32ArrayBuilder                     ,
    toInt32ArrayBuilder                     ,
    noInt32ArrayBuilder                     ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    Int32ArrayBuilderAppendMethodInfo       ,
#endif
    int32ArrayBuilderAppend                 ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    Int32ArrayBuilderAppendNullMethodInfo   ,
#endif
    int32ArrayBuilderAppendNull             ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    Int32ArrayBuilderAppendNullsMethodInfo  ,
#endif
    int32ArrayBuilderAppendNulls            ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    Int32ArrayBuilderAppendValuesMethodInfo ,
#endif
    int32ArrayBuilderAppendValues           ,


-- ** new #method:new#

    int32ArrayBuilderNew                    ,




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
newtype Int32ArrayBuilder = Int32ArrayBuilder (ManagedPtr Int32ArrayBuilder)
foreign import ccall "garrow_int32_array_builder_get_type"
    c_garrow_int32_array_builder_get_type :: IO GType

instance GObject Int32ArrayBuilder where
    gobjectType _ = c_garrow_int32_array_builder_get_type
    

-- | Type class for types which can be safely cast to `Int32ArrayBuilder`, for instance with `toInt32ArrayBuilder`.
class GObject o => IsInt32ArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Int32ArrayBuilder a) =>
    IsInt32ArrayBuilder a
#endif
instance IsInt32ArrayBuilder Int32ArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder Int32ArrayBuilder
instance GObject.Object.IsObject Int32ArrayBuilder

-- | Cast to `Int32ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt32ArrayBuilder :: (MonadIO m, IsInt32ArrayBuilder o) => o -> m Int32ArrayBuilder
toInt32ArrayBuilder = liftIO . unsafeCastTo Int32ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `Int32ArrayBuilder`.
noInt32ArrayBuilder :: Maybe Int32ArrayBuilder
noInt32ArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveInt32ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt32ArrayBuilderMethod "append" o = Int32ArrayBuilderAppendMethodInfo
    ResolveInt32ArrayBuilderMethod "appendNull" o = Int32ArrayBuilderAppendNullMethodInfo
    ResolveInt32ArrayBuilderMethod "appendNulls" o = Int32ArrayBuilderAppendNullsMethodInfo
    ResolveInt32ArrayBuilderMethod "appendValues" o = Int32ArrayBuilderAppendValuesMethodInfo
    ResolveInt32ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt32ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt32ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveInt32ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt32ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt32ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt32ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt32ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt32ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt32ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt32ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt32ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt32ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt32ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt32ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt32ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt32ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt32ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt32ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt32ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt32ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveInt32ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveInt32ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt32ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt32ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt32ArrayBuilderMethod t Int32ArrayBuilder, O.MethodInfo info Int32ArrayBuilder p) => O.IsLabelProxy t (Int32ArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveInt32ArrayBuilderMethod t Int32ArrayBuilder, O.MethodInfo info Int32ArrayBuilder p) => O.IsLabel t (Int32ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Int32ArrayBuilder
type instance O.AttributeList Int32ArrayBuilder = Int32ArrayBuilderAttributeList
type Int32ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Int32ArrayBuilder = Int32ArrayBuilderSignalList
type Int32ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int32ArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Int32ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int32_array_builder_new" garrow_int32_array_builder_new :: 
    IO (Ptr Int32ArrayBuilder)

{- |
/No description available in the introspection data./
-}
int32ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Int32ArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Int32ArrayBuilder.Int32ArrayBuilder'. -}
int32ArrayBuilderNew  = liftIO $ do
    result <- garrow_int32_array_builder_new
    checkUnexpectedReturnNULL "int32ArrayBuilderNew" result
    result' <- (wrapObject Int32ArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Int32ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TInt32, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A int32 value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int32_array_builder_append" garrow_int32_array_builder_append :: 
    Ptr Int32ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int32ArrayBuilder"})
    Int32 ->                                -- value : TBasicType TInt32
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
int32ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int32ArrayBuilder.Int32ArrayBuilder'. -}
    -> Int32
    {- ^ /@value@/: A int32 value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int32ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int32_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int32ArrayBuilderAppendMethodInfo
instance (signature ~ (Int32 -> m ()), MonadIO m, IsInt32ArrayBuilder a) => O.MethodInfo Int32ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = int32ArrayBuilderAppend

#endif

-- method Int32ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int32_array_builder_append_null" garrow_int32_array_builder_append_null :: 
    Ptr Int32ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int32ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
int32ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int32ArrayBuilder.Int32ArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int32ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int32_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int32ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsInt32ArrayBuilder a) => O.MethodInfo Int32ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = int32ArrayBuilderAppendNull

#endif

-- method Int32ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int32_array_builder_append_nulls" garrow_int32_array_builder_append_nulls :: 
    Ptr Int32ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int32ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
int32ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int32ArrayBuilder.Int32ArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int32ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int32_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int32ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsInt32ArrayBuilder a) => O.MethodInfo Int32ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = int32ArrayBuilderAppendNulls

#endif

-- method Int32ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TInt32), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of int32.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int32_array_builder_append_values" garrow_int32_array_builder_append_values :: 
    Ptr Int32ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int32ArrayBuilder"})
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
int32ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int32ArrayBuilder.Int32ArrayBuilder'. -}
    -> [Int32]
    {- ^ /@values@/: The array of int32. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int32ArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_int32_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data Int32ArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Int32] -> Maybe ([Bool]) -> m ()), MonadIO m, IsInt32ArrayBuilder a) => O.MethodInfo Int32ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = int32ArrayBuilderAppendValues

#endif


