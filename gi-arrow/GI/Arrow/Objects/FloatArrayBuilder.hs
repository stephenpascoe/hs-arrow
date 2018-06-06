

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::FloatBuilder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.FloatArrayBuilder
    ( 

-- * Exported types
    FloatArrayBuilder(..)                   ,
    IsFloatArrayBuilder                     ,
    toFloatArrayBuilder                     ,
    noFloatArrayBuilder                     ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    FloatArrayBuilderAppendMethodInfo       ,
#endif
    floatArrayBuilderAppend                 ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    FloatArrayBuilderAppendNullMethodInfo   ,
#endif
    floatArrayBuilderAppendNull             ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    FloatArrayBuilderAppendNullsMethodInfo  ,
#endif
    floatArrayBuilderAppendNulls            ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    FloatArrayBuilderAppendValuesMethodInfo ,
#endif
    floatArrayBuilderAppendValues           ,


-- ** new #method:new#

    floatArrayBuilderNew                    ,




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
newtype FloatArrayBuilder = FloatArrayBuilder (ManagedPtr FloatArrayBuilder)
foreign import ccall "garrow_float_array_builder_get_type"
    c_garrow_float_array_builder_get_type :: IO GType

instance GObject FloatArrayBuilder where
    gobjectType _ = c_garrow_float_array_builder_get_type
    

-- | Type class for types which can be safely cast to `FloatArrayBuilder`, for instance with `toFloatArrayBuilder`.
class GObject o => IsFloatArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError FloatArrayBuilder a) =>
    IsFloatArrayBuilder a
#endif
instance IsFloatArrayBuilder FloatArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder FloatArrayBuilder
instance GObject.Object.IsObject FloatArrayBuilder

-- | Cast to `FloatArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toFloatArrayBuilder :: (MonadIO m, IsFloatArrayBuilder o) => o -> m FloatArrayBuilder
toFloatArrayBuilder = liftIO . unsafeCastTo FloatArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `FloatArrayBuilder`.
noFloatArrayBuilder :: Maybe FloatArrayBuilder
noFloatArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveFloatArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveFloatArrayBuilderMethod "append" o = FloatArrayBuilderAppendMethodInfo
    ResolveFloatArrayBuilderMethod "appendNull" o = FloatArrayBuilderAppendNullMethodInfo
    ResolveFloatArrayBuilderMethod "appendNulls" o = FloatArrayBuilderAppendNullsMethodInfo
    ResolveFloatArrayBuilderMethod "appendValues" o = FloatArrayBuilderAppendValuesMethodInfo
    ResolveFloatArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveFloatArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveFloatArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveFloatArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveFloatArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveFloatArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveFloatArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveFloatArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveFloatArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveFloatArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveFloatArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveFloatArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveFloatArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveFloatArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveFloatArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveFloatArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveFloatArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveFloatArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveFloatArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveFloatArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveFloatArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveFloatArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveFloatArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveFloatArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveFloatArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveFloatArrayBuilderMethod t FloatArrayBuilder, O.MethodInfo info FloatArrayBuilder p) => O.IsLabelProxy t (FloatArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveFloatArrayBuilderMethod t FloatArrayBuilder, O.MethodInfo info FloatArrayBuilder p) => O.IsLabel t (FloatArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList FloatArrayBuilder
type instance O.AttributeList FloatArrayBuilder = FloatArrayBuilderAttributeList
type FloatArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList FloatArrayBuilder = FloatArrayBuilderSignalList
type FloatArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method FloatArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "FloatArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_float_array_builder_new" garrow_float_array_builder_new :: 
    IO (Ptr FloatArrayBuilder)

{- |
/No description available in the introspection data./
-}
floatArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m FloatArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.FloatArrayBuilder.FloatArrayBuilder'. -}
floatArrayBuilderNew  = liftIO $ do
    result <- garrow_float_array_builder_new
    checkUnexpectedReturnNULL "floatArrayBuilderNew" result
    result' <- (wrapObject FloatArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method FloatArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "FloatArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFloatArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TFloat, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A float value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_float_array_builder_append" garrow_float_array_builder_append :: 
    Ptr FloatArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "FloatArrayBuilder"})
    CFloat ->                               -- value : TBasicType TFloat
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
floatArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsFloatArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.FloatArrayBuilder.FloatArrayBuilder'. -}
    -> Float
    {- ^ /@value@/: A float value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
floatArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    let value' = realToFrac value
    onException (do
        _ <- propagateGError $ garrow_float_array_builder_append builder' value'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data FloatArrayBuilderAppendMethodInfo
instance (signature ~ (Float -> m ()), MonadIO m, IsFloatArrayBuilder a) => O.MethodInfo FloatArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = floatArrayBuilderAppend

#endif

-- method FloatArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "FloatArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFloatArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_float_array_builder_append_null" garrow_float_array_builder_append_null :: 
    Ptr FloatArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "FloatArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
floatArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsFloatArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.FloatArrayBuilder.FloatArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
floatArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_float_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data FloatArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsFloatArrayBuilder a) => O.MethodInfo FloatArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = floatArrayBuilderAppendNull

#endif

-- method FloatArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "FloatArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFloatArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_float_array_builder_append_nulls" garrow_float_array_builder_append_nulls :: 
    Ptr FloatArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "FloatArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
floatArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsFloatArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.FloatArrayBuilder.FloatArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
floatArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_float_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data FloatArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsFloatArrayBuilder a) => O.MethodInfo FloatArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = floatArrayBuilderAppendNulls

#endif

-- method FloatArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "FloatArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowFloatArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TFloat), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of float.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_float_array_builder_append_values" garrow_float_array_builder_append_values :: 
    Ptr FloatArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "FloatArrayBuilder"})
    Ptr CFloat ->                           -- values : TCArray False (-1) 2 (TBasicType TFloat)
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
floatArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsFloatArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.FloatArrayBuilder.FloatArrayBuilder'. -}
    -> [Float]
    {- ^ /@values@/: The array of float. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
floatArrayBuilderAppendValues builder values isValids = liftIO $ do
    let isValidsLength = case isValids of
            Nothing -> 0
            Just jIsValids -> fromIntegral $ length jIsValids
    let valuesLength = fromIntegral $ length values
    builder' <- unsafeManagedPtrCastPtr builder
    values' <- (packMapStorableArray realToFrac) values
    maybeIsValids <- case isValids of
        Nothing -> return nullPtr
        Just jIsValids -> do
            jIsValids' <- (packMapStorableArray (fromIntegral . fromEnum)) jIsValids
            return jIsValids'
    onException (do
        _ <- propagateGError $ garrow_float_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data FloatArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Float] -> Maybe ([Bool]) -> m ()), MonadIO m, IsFloatArrayBuilder a) => O.MethodInfo FloatArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = floatArrayBuilderAppendValues

#endif


