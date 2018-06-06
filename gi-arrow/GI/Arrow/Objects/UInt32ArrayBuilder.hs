

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::UInt32Builder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.UInt32ArrayBuilder
    ( 

-- * Exported types
    UInt32ArrayBuilder(..)                  ,
    IsUInt32ArrayBuilder                    ,
    toUInt32ArrayBuilder                    ,
    noUInt32ArrayBuilder                    ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    UInt32ArrayBuilderAppendMethodInfo      ,
#endif
    uInt32ArrayBuilderAppend                ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    UInt32ArrayBuilderAppendNullMethodInfo  ,
#endif
    uInt32ArrayBuilderAppendNull            ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    UInt32ArrayBuilderAppendNullsMethodInfo ,
#endif
    uInt32ArrayBuilderAppendNulls           ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    UInt32ArrayBuilderAppendValuesMethodInfo,
#endif
    uInt32ArrayBuilderAppendValues          ,


-- ** new #method:new#

    uInt32ArrayBuilderNew                   ,




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
newtype UInt32ArrayBuilder = UInt32ArrayBuilder (ManagedPtr UInt32ArrayBuilder)
foreign import ccall "garrow_uint32_array_builder_get_type"
    c_garrow_uint32_array_builder_get_type :: IO GType

instance GObject UInt32ArrayBuilder where
    gobjectType _ = c_garrow_uint32_array_builder_get_type
    

-- | Type class for types which can be safely cast to `UInt32ArrayBuilder`, for instance with `toUInt32ArrayBuilder`.
class GObject o => IsUInt32ArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError UInt32ArrayBuilder a) =>
    IsUInt32ArrayBuilder a
#endif
instance IsUInt32ArrayBuilder UInt32ArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder UInt32ArrayBuilder
instance GObject.Object.IsObject UInt32ArrayBuilder

-- | Cast to `UInt32ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt32ArrayBuilder :: (MonadIO m, IsUInt32ArrayBuilder o) => o -> m UInt32ArrayBuilder
toUInt32ArrayBuilder = liftIO . unsafeCastTo UInt32ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `UInt32ArrayBuilder`.
noUInt32ArrayBuilder :: Maybe UInt32ArrayBuilder
noUInt32ArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveUInt32ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt32ArrayBuilderMethod "append" o = UInt32ArrayBuilderAppendMethodInfo
    ResolveUInt32ArrayBuilderMethod "appendNull" o = UInt32ArrayBuilderAppendNullMethodInfo
    ResolveUInt32ArrayBuilderMethod "appendNulls" o = UInt32ArrayBuilderAppendNullsMethodInfo
    ResolveUInt32ArrayBuilderMethod "appendValues" o = UInt32ArrayBuilderAppendValuesMethodInfo
    ResolveUInt32ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt32ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt32ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveUInt32ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt32ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt32ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt32ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt32ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt32ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt32ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt32ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt32ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt32ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt32ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt32ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt32ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt32ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt32ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt32ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt32ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt32ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveUInt32ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveUInt32ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt32ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt32ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt32ArrayBuilderMethod t UInt32ArrayBuilder, O.MethodInfo info UInt32ArrayBuilder p) => O.IsLabelProxy t (UInt32ArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveUInt32ArrayBuilderMethod t UInt32ArrayBuilder, O.MethodInfo info UInt32ArrayBuilder p) => O.IsLabel t (UInt32ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList UInt32ArrayBuilder
type instance O.AttributeList UInt32ArrayBuilder = UInt32ArrayBuilderAttributeList
type UInt32ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList UInt32ArrayBuilder = UInt32ArrayBuilderSignalList
type UInt32ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt32ArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "UInt32ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint32_array_builder_new" garrow_uint32_array_builder_new :: 
    IO (Ptr UInt32ArrayBuilder)

{- |
/No description available in the introspection data./
-}
uInt32ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UInt32ArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.UInt32ArrayBuilder.UInt32ArrayBuilder'. -}
uInt32ArrayBuilderNew  = liftIO $ do
    result <- garrow_uint32_array_builder_new
    checkUnexpectedReturnNULL "uInt32ArrayBuilderNew" result
    result' <- (wrapObject UInt32ArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method UInt32ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UInt32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TUInt32, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "An uint32 value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint32_array_builder_append" garrow_uint32_array_builder_append :: 
    Ptr UInt32ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt32ArrayBuilder"})
    Word32 ->                               -- value : TBasicType TUInt32
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
uInt32ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UInt32ArrayBuilder.UInt32ArrayBuilder'. -}
    -> Word32
    {- ^ /@value@/: An uint32 value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uInt32ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint32_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data UInt32ArrayBuilderAppendMethodInfo
instance (signature ~ (Word32 -> m ()), MonadIO m, IsUInt32ArrayBuilder a) => O.MethodInfo UInt32ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = uInt32ArrayBuilderAppend

#endif

-- method UInt32ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UInt32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint32_array_builder_append_null" garrow_uint32_array_builder_append_null :: 
    Ptr UInt32ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt32ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
uInt32ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UInt32ArrayBuilder.UInt32ArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uInt32ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint32_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data UInt32ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsUInt32ArrayBuilder a) => O.MethodInfo UInt32ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = uInt32ArrayBuilderAppendNull

#endif

-- method UInt32ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UInt32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint32_array_builder_append_nulls" garrow_uint32_array_builder_append_nulls :: 
    Ptr UInt32ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt32ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
uInt32ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UInt32ArrayBuilder.UInt32ArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uInt32ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint32_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data UInt32ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsUInt32ArrayBuilder a) => O.MethodInfo UInt32ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = uInt32ArrayBuilderAppendNulls

#endif

-- method UInt32ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UInt32ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt32ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TUInt32), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of uint32.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint32_array_builder_append_values" garrow_uint32_array_builder_append_values :: 
    Ptr UInt32ArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "UInt32ArrayBuilder"})
    Ptr Word32 ->                           -- values : TCArray False (-1) 2 (TBasicType TUInt32)
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
uInt32ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt32ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UInt32ArrayBuilder.UInt32ArrayBuilder'. -}
    -> [Word32]
    {- ^ /@values@/: The array of uint32. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uInt32ArrayBuilderAppendValues builder values isValids = liftIO $ do
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
        _ <- propagateGError $ garrow_uint32_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data UInt32ArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([Word32] -> Maybe ([Bool]) -> m ()), MonadIO m, IsUInt32ArrayBuilder a) => O.MethodInfo UInt32ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = uInt32ArrayBuilderAppendValues

#endif


