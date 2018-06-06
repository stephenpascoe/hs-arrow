

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::UInt8Builder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.UInt8ArrayBuilder
    ( 

-- * Exported types
    UInt8ArrayBuilder(..)                   ,
    IsUInt8ArrayBuilder                     ,
    toUInt8ArrayBuilder                     ,
    noUInt8ArrayBuilder                     ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    UInt8ArrayBuilderAppendMethodInfo       ,
#endif
    uInt8ArrayBuilderAppend                 ,


-- ** appendNull #method:appendNull#

#if ENABLE_OVERLOADING
    UInt8ArrayBuilderAppendNullMethodInfo   ,
#endif
    uInt8ArrayBuilderAppendNull             ,


-- ** appendNulls #method:appendNulls#

#if ENABLE_OVERLOADING
    UInt8ArrayBuilderAppendNullsMethodInfo  ,
#endif
    uInt8ArrayBuilderAppendNulls            ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    UInt8ArrayBuilderAppendValuesMethodInfo ,
#endif
    uInt8ArrayBuilderAppendValues           ,


-- ** new #method:new#

    uInt8ArrayBuilderNew                    ,




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
newtype UInt8ArrayBuilder = UInt8ArrayBuilder (ManagedPtr UInt8ArrayBuilder)
foreign import ccall "garrow_uint8_array_builder_get_type"
    c_garrow_uint8_array_builder_get_type :: IO GType

instance GObject UInt8ArrayBuilder where
    gobjectType _ = c_garrow_uint8_array_builder_get_type
    

-- | Type class for types which can be safely cast to `UInt8ArrayBuilder`, for instance with `toUInt8ArrayBuilder`.
class GObject o => IsUInt8ArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError UInt8ArrayBuilder a) =>
    IsUInt8ArrayBuilder a
#endif
instance IsUInt8ArrayBuilder UInt8ArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder UInt8ArrayBuilder
instance GObject.Object.IsObject UInt8ArrayBuilder

-- | Cast to `UInt8ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toUInt8ArrayBuilder :: (MonadIO m, IsUInt8ArrayBuilder o) => o -> m UInt8ArrayBuilder
toUInt8ArrayBuilder = liftIO . unsafeCastTo UInt8ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `UInt8ArrayBuilder`.
noUInt8ArrayBuilder :: Maybe UInt8ArrayBuilder
noUInt8ArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveUInt8ArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveUInt8ArrayBuilderMethod "append" o = UInt8ArrayBuilderAppendMethodInfo
    ResolveUInt8ArrayBuilderMethod "appendNull" o = UInt8ArrayBuilderAppendNullMethodInfo
    ResolveUInt8ArrayBuilderMethod "appendNulls" o = UInt8ArrayBuilderAppendNullsMethodInfo
    ResolveUInt8ArrayBuilderMethod "appendValues" o = UInt8ArrayBuilderAppendValuesMethodInfo
    ResolveUInt8ArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveUInt8ArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveUInt8ArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveUInt8ArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveUInt8ArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveUInt8ArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveUInt8ArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveUInt8ArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveUInt8ArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveUInt8ArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveUInt8ArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveUInt8ArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveUInt8ArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveUInt8ArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveUInt8ArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveUInt8ArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveUInt8ArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveUInt8ArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveUInt8ArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveUInt8ArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveUInt8ArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveUInt8ArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveUInt8ArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveUInt8ArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveUInt8ArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveUInt8ArrayBuilderMethod t UInt8ArrayBuilder, O.MethodInfo info UInt8ArrayBuilder p) => O.IsLabelProxy t (UInt8ArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveUInt8ArrayBuilderMethod t UInt8ArrayBuilder, O.MethodInfo info UInt8ArrayBuilder p) => O.IsLabel t (UInt8ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList UInt8ArrayBuilder
type instance O.AttributeList UInt8ArrayBuilder = UInt8ArrayBuilderAttributeList
type UInt8ArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList UInt8ArrayBuilder = UInt8ArrayBuilderSignalList
type UInt8ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method UInt8ArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "UInt8ArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_uint8_array_builder_new" garrow_uint8_array_builder_new :: 
    IO (Ptr UInt8ArrayBuilder)

{- |
/No description available in the introspection data./
-}
uInt8ArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m UInt8ArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.UInt8ArrayBuilder.UInt8ArrayBuilder'. -}
uInt8ArrayBuilderNew  = liftIO $ do
    result <- garrow_uint8_array_builder_new
    checkUnexpectedReturnNULL "uInt8ArrayBuilderNew" result
    result' <- (wrapObject UInt8ArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method UInt8ArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UInt8ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt8ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TUInt8, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "An uint8 value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint8_array_builder_append" garrow_uint8_array_builder_append :: 
    Ptr UInt8ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "UInt8ArrayBuilder"})
    Word8 ->                                -- value : TBasicType TUInt8
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
uInt8ArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt8ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UInt8ArrayBuilder.UInt8ArrayBuilder'. -}
    -> Word8
    {- ^ /@value@/: An uint8 value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uInt8ArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint8_array_builder_append builder' value
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data UInt8ArrayBuilderAppendMethodInfo
instance (signature ~ (Word8 -> m ()), MonadIO m, IsUInt8ArrayBuilder a) => O.MethodInfo UInt8ArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = uInt8ArrayBuilderAppend

#endif

-- method UInt8ArrayBuilder::append_null
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UInt8ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt8ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint8_array_builder_append_null" garrow_uint8_array_builder_append_null :: 
    Ptr UInt8ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "UInt8ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
uInt8ArrayBuilderAppendNull ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt8ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UInt8ArrayBuilder.UInt8ArrayBuilder'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uInt8ArrayBuilderAppendNull builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint8_array_builder_append_null builder'
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data UInt8ArrayBuilderAppendNullMethodInfo
instance (signature ~ (m ()), MonadIO m, IsUInt8ArrayBuilder a) => O.MethodInfo UInt8ArrayBuilderAppendNullMethodInfo a signature where
    overloadedMethod _ = uInt8ArrayBuilderAppendNull

#endif

-- method UInt8ArrayBuilder::append_nulls
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UInt8ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt8ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of null values to be appended.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint8_array_builder_append_nulls" garrow_uint8_array_builder_append_nulls :: 
    Ptr UInt8ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "UInt8ArrayBuilder"})
    Int64 ->                                -- n : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple nulls at once. It\'s more efficient than multiple
@append_null()@ calls.

@since 0.8.0
-}
uInt8ArrayBuilderAppendNulls ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt8ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UInt8ArrayBuilder.UInt8ArrayBuilder'. -}
    -> Int64
    {- ^ /@n@/: The number of null values to be appended. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uInt8ArrayBuilderAppendNulls builder n = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        _ <- propagateGError $ garrow_uint8_array_builder_append_nulls builder' n
        touchManagedPtr builder
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data UInt8ArrayBuilderAppendNullsMethodInfo
instance (signature ~ (Int64 -> m ()), MonadIO m, IsUInt8ArrayBuilder a) => O.MethodInfo UInt8ArrayBuilderAppendNullsMethodInfo a signature where
    overloadedMethod _ = uInt8ArrayBuilderAppendNulls

#endif

-- method UInt8ArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "UInt8ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowUInt8ArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TUInt8), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of uint8.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_uint8_array_builder_append_values" garrow_uint8_array_builder_append_values :: 
    Ptr UInt8ArrayBuilder ->                -- builder : TInterface (Name {namespace = "Arrow", name = "UInt8ArrayBuilder"})
    Ptr Word8 ->                            -- values : TCArray False (-1) 2 (TBasicType TUInt8)
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
uInt8ArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsUInt8ArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.UInt8ArrayBuilder.UInt8ArrayBuilder'. -}
    -> ByteString
    {- ^ /@values@/: The array of uint8. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
uInt8ArrayBuilderAppendValues builder values isValids = liftIO $ do
    let isValidsLength = case isValids of
            Nothing -> 0
            Just jIsValids -> fromIntegral $ length jIsValids
    let valuesLength = fromIntegral $ B.length values
    builder' <- unsafeManagedPtrCastPtr builder
    values' <- packByteString values
    maybeIsValids <- case isValids of
        Nothing -> return nullPtr
        Just jIsValids -> do
            jIsValids' <- (packMapStorableArray (fromIntegral . fromEnum)) jIsValids
            return jIsValids'
    onException (do
        _ <- propagateGError $ garrow_uint8_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data UInt8ArrayBuilderAppendValuesMethodInfo
instance (signature ~ (ByteString -> Maybe ([Bool]) -> m ()), MonadIO m, IsUInt8ArrayBuilder a) => O.MethodInfo UInt8ArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = uInt8ArrayBuilderAppendValues

#endif


