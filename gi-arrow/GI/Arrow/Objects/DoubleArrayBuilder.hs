

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::DoubleBuilder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.DoubleArrayBuilder
    ( 

-- * Exported types
    DoubleArrayBuilder(..)                  ,
    IsDoubleArrayBuilder                    ,
    toDoubleArrayBuilder                    ,
    noDoubleArrayBuilder                    ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    DoubleArrayBuilderAppendMethodInfo      ,
#endif
    doubleArrayBuilderAppend                ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    DoubleArrayBuilderAppendNullMethodInfo  ,
#endif
    doubleArrayBuilderAppendNull            ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    DoubleArrayBuilderAppendNullsMethodInfo ,
#endif
    doubleArrayBuilderAppendNulls           ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    DoubleArrayBuilderAppendValuesMethodInfo,
#endif
    doubleArrayBuilderAppendValues          ,


-- ** new #method:new#

    doubleArrayBuilderNew                   ,




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
newtype DoubleArrayBuilder = DoubleArrayBuilder (ManagedPtr DoubleArrayBuilder)
foreign import ccall "garrow_double_array_builder_get_type"
    c_garrow_double_array_builder_get_type :: IO GType

instance GObject DoubleArrayBuilder where
    gobjectType _ = c_garrow_double_array_builder_get_type
    

-- | Type class for types which can be safely cast to `DoubleArrayBuilder`, for instance with `toDoubleArrayBuilder`.
class GObject o => IsDoubleArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError DoubleArrayBuilder a) =>
    IsDoubleArrayBuilder a
#endif
instance IsDoubleArrayBuilder DoubleArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder DoubleArrayBuilder
instance GObject.Object.IsObject DoubleArrayBuilder

-- | Cast to `DoubleArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDoubleArrayBuilder :: (MonadIO m, IsDoubleArrayBuilder o) => o -> m DoubleArrayBuilder
toDoubleArrayBuilder = liftIO . unsafeCastTo DoubleArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `DoubleArrayBuilder`.
noDoubleArrayBuilder :: Maybe DoubleArrayBuilder
noDoubleArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveDoubleArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveDoubleArrayBuilderMethod "append" o = DoubleArrayBuilderAppendMethodInfo
    ResolveDoubleArrayBuilderMethod "appendNull" o = DoubleArrayBuilderAppendNullMethodInfo
    ResolveDoubleArrayBuilderMethod "appendNulls" o = DoubleArrayBuilderAppendNullsMethodInfo
    ResolveDoubleArrayBuilderMethod "appendValues" o = DoubleArrayBuilderAppendValuesMethodInfo
    ResolveDoubleArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDoubleArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDoubleArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveDoubleArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDoubleArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDoubleArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDoubleArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDoubleArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDoubleArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDoubleArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDoubleArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDoubleArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDoubleArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDoubleArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDoubleArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDoubleArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDoubleArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDoubleArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDoubleArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDoubleArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDoubleArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveDoubleArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveDoubleArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDoubleArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDoubleArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDoubleArrayBuilderMethod t DoubleArrayBuilder, O.MethodInfo info DoubleArrayBuilder p) => O.IsLabelProxy t (DoubleArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveDoubleArrayBuilderMethod t DoubleArrayBuilder, O.MethodInfo info DoubleArrayBuilder p) => O.IsLabel t (DoubleArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList DoubleArrayBuilder
type instance O.AttributeList DoubleArrayBuilder = DoubleArrayBuilderAttributeList
type DoubleArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList DoubleArrayBuilder = DoubleArrayBuilderSignalList
type DoubleArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method DoubleArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DoubleArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_double_array_builder_new" garrow_double_array_builder_new :: 
    IO (Ptr DoubleArrayBuilder)

{- |
/No description available in the introspection data./
-}
doubleArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m DoubleArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.DoubleArrayBuilder.DoubleArrayBuilder'. -}
doubleArrayBuilderNew  = liftIO $ do
    result <- garrow_double_array_builder_new
    checkUnexpectedReturnNULL "doubleArrayBuilderNew" result
    result' <- (wrapObject DoubleArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method DoubleArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "DoubleArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDoubleArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TDouble, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A double value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_double_array_builder_append" garrow_double_array_builder_append :: 
    Ptr DoubleArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "DoubleArrayBuilder"})
    CDouble ->                              -- value : TBasicType TDouble
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
doubleArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsDoubleArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.DoubleArrayBuilder.DoubleArrayBuilder'. -}
    -> Double
    {- ^ /@value@/: A double value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
doubleArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    let value' = realToFrac value
    onException (do
        _ <- propagateGError $ garrow_double_array_builder_append builder' value'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data DoubleArrayBuilderAppendMethodInfo
instance (signature ~ (Double -> m ()), MonadIO m, IsDoubleArrayBuilder a) => O.MethodInfo DoubleArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = doubleArrayBuilderAppend

#endif

-- method DoubleArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "DoubleArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDoubleArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_double_array_builder_append_null" garrow_double_array_builder_append_null :: 
    Ptr DoubleArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "DoubleArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
doubleArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsDoubleArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.DoubleArrayBuilder.DoubleArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
doubleArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_double_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data DoubleArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsDoubleArrayBuilder a) => O.MethodInfo DoubleArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = doubleArrayBuilderAppendNull

#endif

-- method DoubleArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "DoubleArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDoubleArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_double_array_builder_append_nulls" garrow_double_array_builder_append_nulls :: 
    Ptr DoubleArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "DoubleArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
doubleArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsDoubleArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.DoubleArrayBuilder.DoubleArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
doubleArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_double_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data DoubleArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsDoubleArrayBuilder a) => O.MethodInfo DoubleArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = doubleArrayBuilderAppendNulls

#endif

-- method DoubleArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "DoubleArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDoubleArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TDouble), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of double.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_double_array_builder_append_values" garrow_double_array_builder_append_values :: 
    Ptr DoubleArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "DoubleArrayBuilder"})
    Ptr CDouble ->                          -- values : TCArray False (-1) 2 (TBasicType TDouble)
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
doubleArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsDoubleArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.DoubleArrayBuilder.DoubleArrayBuilder'. -}
    -> [Double]
    {- ^ /@values@/: The array of double. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
doubleArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_double_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data DoubleArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Double] -> Maybe ([Bool]) -> m ()), MonadIO m, IsDoubleArrayBuilder a) => O.MethodInfo DoubleArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = doubleArrayBuilderAppendValues

#endif


