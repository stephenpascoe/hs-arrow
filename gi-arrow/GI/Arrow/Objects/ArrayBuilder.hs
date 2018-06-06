

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.ArrayBuilder
    ( 

-- * Exported types
    ArrayBuilder(..)                        ,
    IsArrayBuilder                          ,
    toArrayBuilder                          ,
    noArrayBuilder                          ,


 -- * Methods
-- ** finish #method:finish#

#if ENABLE_OVERLOADING
    ArrayBuilderFinishMethodInfo            ,
#endif
    arrayBuilderFinish                      ,


-- ** getValueDataType #method:getValueDataType#

#if ENABLE_OVERLOADING
    ArrayBuilderGetValueDataTypeMethodInfo  ,
#endif
    arrayBuilderGetValueDataType            ,


-- ** getValueType #method:getValueType#

#if ENABLE_OVERLOADING
    ArrayBuilderGetValueTypeMethodInfo      ,
#endif
    arrayBuilderGetValueType                ,




 -- * Properties
-- ** arrayBuilder #attr:arrayBuilder#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    ArrayBuilderArrayBuilderPropertyInfo    ,
#endif
#if ENABLE_OVERLOADING
    arrayBuilderArrayBuilder                ,
#endif
    constructArrayBuilderArrayBuilder       ,




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

import {-# SOURCE #-} qualified GI.Arrow.Enums as Arrow.Enums
import {-# SOURCE #-} qualified GI.Arrow.Objects.Array as Arrow.Array
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype ArrayBuilder = ArrayBuilder (ManagedPtr ArrayBuilder)
foreign import ccall "garrow_array_builder_get_type"
    c_garrow_array_builder_get_type :: IO GType

instance GObject ArrayBuilder where
    gobjectType _ = c_garrow_array_builder_get_type
    

-- | Type class for types which can be safely cast to `ArrayBuilder`, for instance with `toArrayBuilder`.
class GObject o => IsArrayBuilder o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError ArrayBuilder a) =>
    IsArrayBuilder a
#endif
instance IsArrayBuilder ArrayBuilder
instance GObject.Object.IsObject ArrayBuilder

-- | Cast to `ArrayBuilder`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toArrayBuilder :: (MonadIO m, IsArrayBuilder o) => o -> m ArrayBuilder
toArrayBuilder = liftIO . unsafeCastTo ArrayBuilder

-- | A convenience alias for `Nothing` :: `Maybe` `ArrayBuilder`.
noArrayBuilder :: Maybe ArrayBuilder
noArrayBuilder = Nothing

#if ENABLE_OVERLOADING
type family ResolveArrayBuilderMethod (t :: Symbol) (o :: *) :: * where
    ResolveArrayBuilderMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveArrayBuilderMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveArrayBuilderMethod "finish" o = ArrayBuilderFinishMethodInfo
    ResolveArrayBuilderMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveArrayBuilderMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveArrayBuilderMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveArrayBuilderMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveArrayBuilderMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveArrayBuilderMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveArrayBuilderMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveArrayBuilderMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveArrayBuilderMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveArrayBuilderMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveArrayBuilderMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveArrayBuilderMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveArrayBuilderMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveArrayBuilderMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveArrayBuilderMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveArrayBuilderMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveArrayBuilderMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveArrayBuilderMethod "getValueDataType" o = ArrayBuilderGetValueDataTypeMethodInfo
    ResolveArrayBuilderMethod "getValueType" o = ArrayBuilderGetValueTypeMethodInfo
    ResolveArrayBuilderMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveArrayBuilderMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveArrayBuilderMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveArrayBuilderMethod t ArrayBuilder, O.MethodInfo info ArrayBuilder p) => O.IsLabelProxy t (ArrayBuilder -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveArrayBuilderMethod t ArrayBuilder, O.MethodInfo info ArrayBuilder p) => O.IsLabel t (ArrayBuilder -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "array-builder"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@array-builder@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructArrayBuilderArrayBuilder :: (IsArrayBuilder o) => Ptr () -> IO (GValueConstruct o)
constructArrayBuilderArrayBuilder val = constructObjectPropertyPtr "array-builder" val

#if ENABLE_OVERLOADING
data ArrayBuilderArrayBuilderPropertyInfo
instance AttrInfo ArrayBuilderArrayBuilderPropertyInfo where
    type AttrAllowedOps ArrayBuilderArrayBuilderPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint ArrayBuilderArrayBuilderPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint ArrayBuilderArrayBuilderPropertyInfo = IsArrayBuilder
    type AttrGetType ArrayBuilderArrayBuilderPropertyInfo = ()
    type AttrLabel ArrayBuilderArrayBuilderPropertyInfo = "array-builder"
    type AttrOrigin ArrayBuilderArrayBuilderPropertyInfo = ArrayBuilder
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructArrayBuilderArrayBuilder
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList ArrayBuilder
type instance O.AttributeList ArrayBuilder = ArrayBuilderAttributeList
type ArrayBuilderAttributeList = ('[ '("arrayBuilder", ArrayBuilderArrayBuilderPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
arrayBuilderArrayBuilder :: AttrLabelProxy "arrayBuilder"
arrayBuilderArrayBuilder = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList ArrayBuilder = ArrayBuilderSignalList
type ArrayBuilderSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method ArrayBuilder::finish
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Array"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_array_builder_finish" garrow_array_builder_finish :: 
    Ptr ArrayBuilder ->                     -- builder : TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"})
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Array.Array)

{- |
/No description available in the introspection data./
-}
arrayBuilderFinish ::
    (B.CallStack.HasCallStack, MonadIO m, IsArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.ArrayBuilder.ArrayBuilder'. -}
    -> m Arrow.Array.Array
    {- ^ __Returns:__ The built 'GI.Arrow.Objects.Array.Array' on success,
  'Nothing' on error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
arrayBuilderFinish builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    onException (do
        result <- propagateGError $ garrow_array_builder_finish builder'
        checkUnexpectedReturnNULL "arrayBuilderFinish" result
        result' <- (wrapObject Arrow.Array.Array) result
        touchManagedPtr builder
        return result'
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data ArrayBuilderFinishMethodInfo
instance (signature ~ (m Arrow.Array.Array), MonadIO m, IsArrayBuilder a) => O.MethodInfo ArrayBuilderFinishMethodInfo a signature where
    overloadedMethod _ = arrayBuilderFinish

#endif

-- method ArrayBuilder::get_value_data_type
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_builder_get_value_data_type" garrow_array_builder_get_value_data_type :: 
    Ptr ArrayBuilder ->                     -- builder : TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"})
    IO (Ptr Arrow.DataType.DataType)

{- |
/No description available in the introspection data./

@since 0.9.0
-}
arrayBuilderGetValueDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.ArrayBuilder.ArrayBuilder'. -}
    -> m Arrow.DataType.DataType
    {- ^ __Returns:__ The 'GI.Arrow.Objects.DataType.DataType' of the value of
  the array builder. -}
arrayBuilderGetValueDataType builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_array_builder_get_value_data_type builder'
    checkUnexpectedReturnNULL "arrayBuilderGetValueDataType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr builder
    return result'

#if ENABLE_OVERLOADING
data ArrayBuilderGetValueDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsArrayBuilder a) => O.MethodInfo ArrayBuilderGetValueDataTypeMethodInfo a signature where
    overloadedMethod _ = arrayBuilderGetValueDataType

#endif

-- method ArrayBuilder::get_value_type
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "builder", argType = TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowArrayBuilder.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Type"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_array_builder_get_value_type" garrow_array_builder_get_value_type :: 
    Ptr ArrayBuilder ->                     -- builder : TInterface (Name {namespace = "Arrow", name = "ArrayBuilder"})
    IO CUInt

{- |
/No description available in the introspection data./

@since 0.9.0
-}
arrayBuilderGetValueType ::
    (B.CallStack.HasCallStack, MonadIO m, IsArrayBuilder a) =>
    a
    {- ^ /@builder@/: A 'GI.Arrow.Objects.ArrayBuilder.ArrayBuilder'. -}
    -> m Arrow.Enums.Type
    {- ^ __Returns:__ The 'GI.Arrow.Enums.Type' of the value of the array builder. -}
arrayBuilderGetValueType builder = liftIO $ do
    builder' <- unsafeManagedPtrCastPtr builder
    result <- garrow_array_builder_get_value_type builder'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr builder
    return result'

#if ENABLE_OVERLOADING
data ArrayBuilderGetValueTypeMethodInfo
instance (signature ~ (m Arrow.Enums.Type), MonadIO m, IsArrayBuilder a) => O.MethodInfo ArrayBuilderGetValueTypeMethodInfo a signature where
    overloadedMethod _ = arrayBuilderGetValueType

#endif


