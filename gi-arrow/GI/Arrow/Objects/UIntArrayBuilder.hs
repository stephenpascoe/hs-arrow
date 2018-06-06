

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.UIntArrayBuilder
    ( 

-- * Exported types
    UIntArrayBuilder(..)                    ,
    IsUIntArrayBuilder                      ,
    toUIntArrayBuilder                      ,
    noUIntArrayBuilder                      ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    UIntArrayBuilderAppendMethodInfo        ,
#endif
    uIntArrayBuilderAppend                  ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    UIntArrayBuilderAppendNullMethodInfo    ,
#endif
    uIntArrayBuilderAppendNull              ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    UIntArrayBuilderAppendNullsMethodInfo   ,
#endif
    uIntArrayBuilderAppendNulls             ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    UIntArrayBuilderAppendValuesMethodInfo  ,
#endif
    uIntArrayBuilderAppendValues            ,


-- ** new #method:new#

    uIntArrayBuilderNew                     ,




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
newtype UIntArrayBuilder = UIntArrayBuilder (ManagedPtr UIntArrayBuilder)
foreign import ccall "garrow_uint_array_builder_get_type"
    c_garrow_uint_array_builder_get_type :: IO GType

instance GObject UIntArrayBuilder where
    gobjectType _ = c_garrow_uint_array_builder_get_type
    

-- | Type class for types which can be safely cast to `UIntArrayBuilder`, for instance with `toUIntArrayBuilder`.
class GObject o => IsUIntArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError UIntArrayBuilder a) =>
    IsUIntArrayBuilder a
#endif
instance IsUIntArrayBuilder UIntArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder UIntArrayBuilder
instance GObject.Object.IsObject UIntArrayBuilder

-- | Cast to `UIntArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUIntArrayBuilder :: (MonadIO m, IsUIntArrayBuilder o) => o -> m UIntArrayBuilder
toUIntArrayBuilder = liftIO . unsafeCastTo UIntArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `UIntArrayBuilder`.
noUIntArrayBuilder :: Maybe UIntArrayBuilder
noUIntArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveUIntArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveUIntArrayBuilderMethod "append" o = UIntArrayBuilderAppendMethodInfo
    ResolveUIntArrayBuilderMethod "appendNull" o = UIntArrayBuilderAppendNullMethodInfo
    ResolveUIntArrayBuilderMethod "appendNulls" o = UIntArrayBuilderAppendNullsMethodInfo
    ResolveUIntArrayBuilderMethod "appendValues" o = UIntArrayBuilderAppendValuesMethodInfo
    ResolveUIntArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUIntArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUIntArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveUIntArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUIntArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUIntArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUIntArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUIntArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUIntArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUIntArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUIntArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUIntArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUIntArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUIntArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUIntArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUIntArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUIntArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUIntArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUIntArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUIntArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUIntArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveUIntArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveUIntArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUIntArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUIntArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUIntArrayBuilderMethod t UIntArrayBuilder, O.MethodInfo info UIntArrayBuilder p) => O.IsLabelProxy t (UIntArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveUIntArrayBuilderMethod t UIntArrayBuilder, O.MethodInfo info UIntArrayBuilder p) => O.IsLabel t (UIntArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList UIntArrayBuilder
type instance O.AttributeList UIntArrayBuilder = UIntArrayBuilderAttributeList
type UIntArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList UIntArrayBuilder = UIntArrayBuilderSignalList
type UIntArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UIntArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint_array_builder_new" garrow_uint_array_builder_new :: 
    IO (Ptr UIntArrayBuilder)

{- |
/No description available in the introspection data./

@since 0.8.0
-}
uIntArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UIntArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'. -}
uIntArrayBuilderNew  = liftIO $ do
    result <- garrow_uint_array_builder_new
    checkUnexpectedReturnNULL "uIntArrayBuilderNew" result
    result' <- (wrapObject UIntArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method UIntArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUIntArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TUInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A unsigned int value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint_array_builder_append" garrow_uint_array_builder_append :: 
    Ptr UIntArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"})
    Word64 ->                               -- value : TBasicType TUInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.8.0
-}
uIntArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsUIntArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'. -}
    -> Word64
    {- ^ /@value@/: A unsigned int value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uIntArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data UIntArrayBuilderAppendMethodInfo
instance (signature ~ (Word64 -> m ()), MonadIO m, IsUIntArrayBuilder a) => O.MethodInfo UIntArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = uIntArrayBuilderAppend

#endif

-- method UIntArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUIntArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint_array_builder_append_null" garrow_uint_array_builder_append_null :: 
    Ptr UIntArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./

@since 0.8.0
-}
uIntArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsUIntArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uIntArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data UIntArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsUIntArrayBuilder a) => O.MethodInfo UIntArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = uIntArrayBuilderAppendNull

#endif

-- method UIntArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUIntArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint_array_builder_append_nulls" garrow_uint_array_builder_append_nulls :: 
    Ptr UIntArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
uIntArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsUIntArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uIntArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data UIntArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsUIntArrayBuilder a) => O.MethodInfo UIntArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = uIntArrayBuilderAppendNulls

#endif

-- method UIntArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUIntArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TUInt64), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of unsigned int.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint_array_builder_append_values" garrow_uint_array_builder_append_values :: 
    Ptr UIntArrayBuilder ->                 -- builder : TInterface (Name {namespace = "Arrow", name = "UIntArrayBuilder"})
    Ptr Word64 ->                           -- values : TCArray False (-1) 2 (TBasicType TUInt64)
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
uIntArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUIntArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UIntArrayBuilder.UIntArrayBuilder'. -}
    -> [Word64]
    {- ^ /@values@/: The array of unsigned int. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uIntArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_uint_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data UIntArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Word64] -> Maybe ([Bool]) -> m ()), MonadIO m, IsUIntArrayBuilder a) => O.MethodInfo UIntArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = uIntArrayBuilderAppendValues

#endif


