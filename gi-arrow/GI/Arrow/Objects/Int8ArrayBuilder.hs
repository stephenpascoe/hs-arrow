

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Int8Builder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Int8ArrayBuilder
    ( 

-- * Exported types
    Int8ArrayBuilder(..)                    ,
    IsInt8ArrayBuilder                      ,
    toInt8ArrayBuilder                      ,
    noInt8ArrayBuilder                      ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    Int8ArrayBuilderAppendMethodInfo        ,
#endif
    int8ArrayBuilderAppend                  ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    Int8ArrayBuilderAppendNullMethodInfo    ,
#endif
    int8ArrayBuilderAppendNull              ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    Int8ArrayBuilderAppendNullsMethodInfo   ,
#endif
    int8ArrayBuilderAppendNulls             ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    Int8ArrayBuilderAppendValuesMethodInfo  ,
#endif
    int8ArrayBuilderAppendValues            ,


-- ** new #method:new#

    int8ArrayBuilderNew                     ,




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
newtype Int8ArrayBuilder = Int8ArrayBuilder (ManagedPtr Int8ArrayBuilder)
foreign import ccall "garrow_int8_array_builder_get_type"
    c_garrow_int8_array_builder_get_type :: IO GType

instance GObject Int8ArrayBuilder where
    gobjectType _ = c_garrow_int8_array_builder_get_type
    

-- | Type class for types which can be safely cast to `Int8ArrayBuilder`, for instance with `toInt8ArrayBuilder`.
class GObject o => IsInt8ArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Int8ArrayBuilder a) =>
    IsInt8ArrayBuilder a
#endif
instance IsInt8ArrayBuilder Int8ArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder Int8ArrayBuilder
instance GObject.Object.IsObject Int8ArrayBuilder

-- | Cast to `Int8ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt8ArrayBuilder :: (MonadIO m, IsInt8ArrayBuilder o) => o -> m Int8ArrayBuilder
toInt8ArrayBuilder = liftIO . unsafeCastTo Int8ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `Int8ArrayBuilder`.
noInt8ArrayBuilder :: Maybe Int8ArrayBuilder
noInt8ArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveInt8ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt8ArrayBuilderMethod "append" o = Int8ArrayBuilderAppendMethodInfo
    ResolveInt8ArrayBuilderMethod "appendNull" o = Int8ArrayBuilderAppendNullMethodInfo
    ResolveInt8ArrayBuilderMethod "appendNulls" o = Int8ArrayBuilderAppendNullsMethodInfo
    ResolveInt8ArrayBuilderMethod "appendValues" o = Int8ArrayBuilderAppendValuesMethodInfo
    ResolveInt8ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt8ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt8ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveInt8ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt8ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt8ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt8ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt8ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt8ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt8ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt8ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt8ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt8ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt8ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt8ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt8ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt8ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt8ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt8ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt8ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt8ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveInt8ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveInt8ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt8ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt8ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt8ArrayBuilderMethod t Int8ArrayBuilder, O.MethodInfo info Int8ArrayBuilder p) => O.IsLabelProxy t (Int8ArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveInt8ArrayBuilderMethod t Int8ArrayBuilder, O.MethodInfo info Int8ArrayBuilder p) => O.IsLabel t (Int8ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Int8ArrayBuilder
type instance O.AttributeList Int8ArrayBuilder = Int8ArrayBuilderAttributeList
type Int8ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Int8ArrayBuilder = Int8ArrayBuilderSignalList
type Int8ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int8ArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Int8ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int8_array_builder_new" garrow_int8_array_builder_new :: 
    IO (Ptr Int8ArrayBuilder)

{- |
/No description available in the introspection data./
-}
int8ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Int8ArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Int8ArrayBuilder.Int8ArrayBuilder'. -}
int8ArrayBuilderNew  = liftIO $ do
    result <- garrow_int8_array_builder_new
    checkUnexpectedReturnNULL "int8ArrayBuilderNew" result
    result' <- (wrapObject Int8ArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Int8ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int8ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt8ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TInt8, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A int8 value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int8_array_builder_append" garrow_int8_array_builder_append :: 
    Ptr Int8ArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "Int8ArrayBuilder"})
    Int8 ->                                 -- value : TBasicType TInt8
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
int8ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt8ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int8ArrayBuilder.Int8ArrayBuilder'. -}
    -> Int8
    {- ^ /@value@/: A int8 value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int8ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int8_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int8ArrayBuilderAppendMethodInfo
instance (signature ~ (Int8 -> m ()), MonadIO m, IsInt8ArrayBuilder a) => O.MethodInfo Int8ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = int8ArrayBuilderAppend

#endif

-- method Int8ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int8ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt8ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int8_array_builder_append_null" garrow_int8_array_builder_append_null :: 
    Ptr Int8ArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "Int8ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
int8ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt8ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int8ArrayBuilder.Int8ArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int8ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int8_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int8ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsInt8ArrayBuilder a) => O.MethodInfo Int8ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = int8ArrayBuilderAppendNull

#endif

-- method Int8ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int8ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt8ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int8_array_builder_append_nulls" garrow_int8_array_builder_append_nulls :: 
    Ptr Int8ArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "Int8ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
int8ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt8ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int8ArrayBuilder.Int8ArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int8ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int8_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int8ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsInt8ArrayBuilder a) => O.MethodInfo Int8ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = int8ArrayBuilderAppendNulls

#endif

-- method Int8ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int8ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt8ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TInt8), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of int8.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int8_array_builder_append_values" garrow_int8_array_builder_append_values :: 
    Ptr Int8ArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "Int8ArrayBuilder"})
    Ptr Int8 ->                             -- values : TCArray False (-1) 2 (TBasicType TInt8)
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
int8ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt8ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int8ArrayBuilder.Int8ArrayBuilder'. -}
    -> [Int8]
    {- ^ /@values@/: The array of int8. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int8ArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_int8_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data Int8ArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Int8] -> Maybe ([Bool]) -> m ()), MonadIO m, IsInt8ArrayBuilder a) => O.MethodInfo Int8ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = int8ArrayBuilderAppendValues

#endif


