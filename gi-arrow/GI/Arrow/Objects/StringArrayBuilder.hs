

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::StringBuilder@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.StringArrayBuilder
    ( 

-- * Exported types
    StringArrayBuilder(..)                  ,
    IsStringArrayBuilder                    ,
    toStringArrayBuilder                    ,
    noStringArrayBuilder                    ,


 -- * Methods
-- ** append #method:append#

#if ENABLE_OVERLOADING
    StringArrayBuilderAppendMethodInfo      ,
#endif
    stringArrayBuilderAppend                ,


-- ** appendValues #method:appendValues#

#if ENABLE_OVERLOADING
    StringArrayBuilderAppendValuesMethodInfo,
#endif
    stringArrayBuilderAppendValues          ,


-- ** new #method:new#

    stringArrayBuilderNew                   ,




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
import {-# SOURCE #-} qualified GI.Arrow.Objects.BinaryArrayBuilder as Arrow.BinaryArrayBuilder
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype StringArrayBuilder = StringArrayBuilder (ManagedPtr StringArrayBuilder)
foreign import ccall "garrow_string_array_builder_get_type"
    c_garrow_string_array_builder_get_type :: IO GType

instance GObject StringArrayBuilder where
    gobjectType _ = c_garrow_string_array_builder_get_type
    

-- | Type class for types which can be safely cast to `StringArrayBuilder`, for instance with `toStringArrayBuilder`.
class GObject o => IsStringArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError StringArrayBuilder a) =>
    IsStringArrayBuilder a
#endif
instance IsStringArrayBuilder StringArrayBuilder
instance Arrow.BinaryArrayBuilder.IsBinaryArrayBuilder StringArrayBuilder
instance Arrow.ArrayBuilder.IsArrayBuilder StringArrayBuilder
instance GObject.Object.IsObject StringArrayBuilder

-- | Cast to `StringArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toStringArrayBuilder :: (MonadIO m, IsStringArrayBuilder o) => o -> m StringArrayBuilder
toStringArrayBuilder = liftIO . unsafeCastTo StringArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `StringArrayBuilder`.
noStringArrayBuilder :: Maybe StringArrayBuilder
noStringArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveStringArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveStringArrayBuilderMethod "append" o = StringArrayBuilderAppendMethodInfo
    ResolveStringArrayBuilderMethod "appendNull" o = Arrow.BinaryArrayBuilder.BinaryArrayBuilderAppendNullMethodInfo
    ResolveStringArrayBuilderMethod "appendValues" o = StringArrayBuilderAppendValuesMethodInfo
    ResolveStringArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveStringArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveStringArrayBuilderMethod "finish" o = Arrow.ArrayBuilder.ArrayBuilderFinishMethodInfo
    ResolveStringArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveStringArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveStringArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveStringArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveStringArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveStringArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveStringArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveStringArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveStringArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveStringArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveStringArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveStringArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveStringArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveStringArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveStringArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveStringArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveStringArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveStringArrayBuilderMethod "getValueDataType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueDataTypeMethodInfo
    ResolveStringArrayBuilderMethod "getValueType" o = Arrow.ArrayBuilder.ArrayBuilderGetValueTypeMethodInfo
    ResolveStringArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveStringArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveStringArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveStringArrayBuilderMethod t StringArrayBuilder, O.MethodInfo info StringArrayBuilder p) => O.IsLabelProxy t (StringArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveStringArrayBuilderMethod t StringArrayBuilder, O.MethodInfo info StringArrayBuilder p) => O.IsLabel t (StringArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList StringArrayBuilder
type instance O.AttributeList StringArrayBuilder = StringArrayBuilderAttributeList
type StringArrayBuilderAttributeList = ('[ '("arrayBuilder", Arrow.ArrayBuilder.ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList StringArrayBuilder = StringArrayBuilderSignalList
type StringArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method StringArrayBuilder::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "StringArrayBuilder"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_string_array_builder_new" garrow_string_array_builder_new :: 
    IO (Ptr StringArrayBuilder)

{- |
/No description available in the introspection data./
-}
stringArrayBuilderNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m StringArrayBuilder
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.StringArrayBuilder.StringArrayBuilder'. -}
stringArrayBuilderNew  = liftIO $ do
    result <- garrow_string_array_builder_new
    checkUnexpectedReturnNULL "stringArrayBuilderNew" result
    result' <- (wrapObject StringArrayBuilder) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method StringArrayBuilder::append
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "StringArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowStringArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "value", argType = TBasicType TUTF8, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A string value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_string_array_builder_append" garrow_string_array_builder_append :: 
    Ptr StringArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "StringArrayBuilder"})
    CString ->                              -- value : TBasicType TUTF8
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
stringArrayBuilderAppend ::
    (B.CallStack.HasCallStack, MonadIO m, IsStringArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.StringArrayBuilder.StringArrayBuilder'. -}
    -> T.Text
    {- ^ /@value@/: A string value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
stringArrayBuilderAppend builder value = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    value' <- textToCString value
    onException (do
        _ <- propagateGError $ garrow_string_array_builder_append builder' value'
        touchManagedPtr builder
        freeMem value'
        return ()
     ) (do
        freeMem value'
     )

#if ENABLE_OVERLOADING
data StringArrayBuilderAppendMethodInfo
instance (signature ~ (T.Text -> m ()), MonadIO m, IsStringArrayBuilder a) => O.MethodInfo StringArrayBuilderAppendMethodInfo a signature where
    overloadedMethod _ = stringArrayBuilderAppend

#endif

-- method StringArrayBuilder::append_values
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "StringArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowStringArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values", argType = TCArray False (-1) 2 (TBasicType TUTF8), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The array of\n  strings.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids", argType = TCArray False (-1) 4 (TBasicType TBoolean), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "The array of\n  boolean that shows whether the Nth value is valid or not. If the\n  Nth `is_valids` is %TRUE, the Nth `values` is valid value. Otherwise\n  the Nth value is null value.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "is_valids_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `is_valids`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "values_length", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The length of `values`.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_string_array_builder_append_values" garrow_string_array_builder_append_values :: 
    Ptr StringArrayBuilder ->               -- builder : TInterface (Name {namespace = "Arrow", name = "StringArrayBuilder"})
    Ptr CString ->                          -- values : TCArray False (-1) 2 (TBasicType TUTF8)
    Int64 ->                                -- values_length : TBasicType TInt64
    Ptr CInt ->                             -- is_valids : TCArray False (-1) 4 (TBasicType TBoolean)
    Int64 ->                                -- is_valids_length : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
Append multiple values at once. It\'s more efficient than multiple
@append()@ and @append_null()@ calls.

@since 0.10.0
-}
stringArrayBuilderAppendValues ::
    (B.CallStack.HasCallStack, MonadIO m, IsStringArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.StringArrayBuilder.StringArrayBuilder'. -}
    -> [T.Text]
    {- ^ /@values@/: The array of
  strings. -}
    -> Maybe ([Bool])
    {- ^ /@isValids@/: The array of
  boolean that shows whether the Nth value is valid or not. If the
  Nth @is_valids@ is 'True', the Nth @values@ is valid value. Otherwise
  the Nth value is null value. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
stringArrayBuilderAppendValues builder values isValids = liftIO $ do
    let isValidsLength = case isValids of
            Nothing -> 0
            Just jIsValids -> fromIntegral $ length jIsValids
    let valuesLength = fromIntegral $ length values
    builder' <- unsafeManagedPtrCastPtr builder
    values' <- packUTF8CArray values
    maybeIsValids <- case isValids of
        Nothing -> return nullPtr
        Just jIsValids -> do
            jIsValids' <- (packMapStorableArray (fromIntegral . fromEnum)) jIsValids
            return jIsValids'
    onException (do
        _ <- propagateGError $ garrow_string_array_builder_append_values builder' values' valuesLength maybeIsValids isValidsLength
        touchManagedPtr builder
        (mapCArrayWithLength valuesLength) freeMem values'
        freeMem values'
        freeMem maybeIsValids
        return ()
     ) (do
        (mapCArrayWithLength valuesLength) freeMem values'
        freeMem values'
        freeMem maybeIsValids
     )

#if ENABLE_OVERLOADING
data StringArrayBuilderAppendValuesMethodInfo
instance (signature ~ ([T.Text] -> Maybe ([Bool]) -> m ()), MonadIO m, IsStringArrayBuilder a) => O.MethodInfo StringArrayBuilderAppendValuesMethodInfo a signature where
    overloadedMethod _ = stringArrayBuilderAppendValues

#endif


