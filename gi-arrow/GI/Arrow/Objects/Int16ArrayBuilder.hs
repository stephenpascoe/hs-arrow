

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Int16Builder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Int16ArrayBuilder
    ( 

-- * Exported types
    Int16ArrayBuilder(..)                   ,
    IsInt16ArrayBuilder                     ,
    toInt16ArrayBuilder                     ,
    noInt16ArrayBuilder                     ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    Int16ArrayBuilderAppendMethodInfo       ,
#endif
    int16ArrayBuilderAppend                 ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    Int16ArrayBuilderAppendNullMethodInfo   ,
#endif
    int16ArrayBuilderAppendNull             ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    Int16ArrayBuilderAppendNullsMethodInfo  ,
#endif
    int16ArrayBuilderAppendNulls            ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    Int16ArrayBuilderAppendValuesMethodInfo ,
#endif
    int16ArrayBuilderAppendValues           ,


-- ** new #method:new#

    int16ArrayBuilderNew                    ,




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
newtype Int16ArrayBuilder = Int16ArrayBuilder (ManagedPtr Int16ArrayBuilder)
foreign import ccall "garrow_int16_array_builder_get_type"
    c_garrow_int16_array_builder_get_type :: IO GType

instance GObject Int16ArrayBuilder where
    gobjectType _ = c_garrow_int16_array_builder_get_type
    

-- | Type class for types which can be safely cast to `Int16ArrayBuilder`, for instance with `toInt16ArrayBuilder`.
class GObject o => IsInt16ArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Int16ArrayBuilder a) =>
    IsInt16ArrayBuilder a
#endif
instance IsInt16ArrayBuilder Int16ArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder Int16ArrayBuilder
instance GObject.Object.IsObject Int16ArrayBuilder

-- | Cast to `Int16ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toInt16ArrayBuilder :: (MonadIO m, IsInt16ArrayBuilder o) => o -> m Int16ArrayBuilder
toInt16ArrayBuilder = liftIO . unsafeCastTo Int16ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `Int16ArrayBuilder`.
noInt16ArrayBuilder :: Maybe Int16ArrayBuilder
noInt16ArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveInt16ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveInt16ArrayBuilderMethod "append" o = Int16ArrayBuilderAppendMethodInfo
    ResolveInt16ArrayBuilderMethod "appendNull" o = Int16ArrayBuilderAppendNullMethodInfo
    ResolveInt16ArrayBuilderMethod "appendNulls" o = Int16ArrayBuilderAppendNullsMethodInfo
    ResolveInt16ArrayBuilderMethod "appendValues" o = Int16ArrayBuilderAppendValuesMethodInfo
    ResolveInt16ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveInt16ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveInt16ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveInt16ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveInt16ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveInt16ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveInt16ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveInt16ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveInt16ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveInt16ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveInt16ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveInt16ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveInt16ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveInt16ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveInt16ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveInt16ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveInt16ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveInt16ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveInt16ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveInt16ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveInt16ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveInt16ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveInt16ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveInt16ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveInt16ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveInt16ArrayBuilderMethod t Int16ArrayBuilder, O.MethodInfo info Int16ArrayBuilder p) => O.IsLabelProxy t (Int16ArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveInt16ArrayBuilderMethod t Int16ArrayBuilder, O.MethodInfo info Int16ArrayBuilder p) => O.IsLabel t (Int16ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Int16ArrayBuilder
type instance O.AttributeList Int16ArrayBuilder = Int16ArrayBuilderAttributeList
type Int16ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Int16ArrayBuilder = Int16ArrayBuilderSignalList
type Int16ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Int16ArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Int16ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_int16_array_builder_new" garrow_int16_array_builder_new :: 
    IO (Ptr Int16ArrayBuilder)

{- |
/No description available in the introspection data./
-}
int16ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Int16ArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Int16ArrayBuilder.Int16ArrayBuilder'. -}
int16ArrayBuilderNew  = liftIO $ do
    result <- garrow_int16_array_builder_new
    checkUnexpectedReturnNULL "int16ArrayBuilderNew" result
    result' <- (wrapObject Int16ArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Int16ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int16ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt16ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TInt16, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A int16 value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int16_array_builder_append" garrow_int16_array_builder_append :: 
    Ptr Int16ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int16ArrayBuilder"})
    Int16 ->                                -- value : TBasicType TInt16
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
int16ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt16ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int16ArrayBuilder.Int16ArrayBuilder'. -}
    -> Int16
    {- ^ /@value@/: A int16 value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int16ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int16_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int16ArrayBuilderAppendMethodInfo
instance (signature ~ (Int16 -> m ()), MonadIO m, IsInt16ArrayBuilder a) => O.MethodInfo Int16ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = int16ArrayBuilderAppend

#endif

-- method Int16ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int16ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt16ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int16_array_builder_append_null" garrow_int16_array_builder_append_null :: 
    Ptr Int16ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int16ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
int16ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt16ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int16ArrayBuilder.Int16ArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int16ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int16_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int16ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsInt16ArrayBuilder a) => O.MethodInfo Int16ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = int16ArrayBuilderAppendNull

#endif

-- method Int16ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int16ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt16ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int16_array_builder_append_nulls" garrow_int16_array_builder_append_nulls :: 
    Ptr Int16ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int16ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
int16ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt16ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int16ArrayBuilder.Int16ArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int16ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_int16_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data Int16ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsInt16ArrayBuilder a) => O.MethodInfo Int16ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = int16ArrayBuilderAppendNulls

#endif

-- method Int16ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "Int16ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowInt16ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TInt16), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of int16.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_int16_array_builder_append_values" garrow_int16_array_builder_append_values :: 
    Ptr Int16ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "Int16ArrayBuilder"})
    Ptr Int16 ->                            -- values : TCArray False (-1) 2 (TBasicType TInt16)
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
int16ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsInt16ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.Int16ArrayBuilder.Int16ArrayBuilder'. -}
    -> [Int16]
    {- ^ /@values@/: The array of int16. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
int16ArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_int16_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data Int16ArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Int16] -> Maybe ([Bool]) -> m ()), MonadIO m, IsInt16ArrayBuilder a) => O.MethodInfo Int16ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = int16ArrayBuilderAppendValues

#endif


