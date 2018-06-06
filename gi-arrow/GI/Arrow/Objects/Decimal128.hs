

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Decimal128
    ( 

-- * Exported types
    Decimal128(..)                          ,
    IsDecimal128                            ,
    toDecimal128                            ,
    noDecimal128                            ,


 -- * Methods
-- ** abs #method:abs#

#if ENABLE_OVERLOADING
    Decimal128AbsMethodInfo                 ,
#endif
    decimal128Abs                           ,


-- ** negate #method:negate#

#if ENABLE_OVERLOADING
    Decimal128NegateMethodInfo              ,
#endif
    decimal128Negate                        ,


-- ** newInteger #method:newInteger#

    decimal128NewInteger                    ,


-- ** newString #method:newString#

    decimal128NewString                     ,


-- ** toString #method:toString#

#if ENABLE_OVERLOADING
    Decimal128ToStringMethodInfo            ,
#endif
    decimal128ToString                      ,


-- ** toStringScale #method:toStringScale#

#if ENABLE_OVERLOADING
    Decimal128ToStringScaleMethodInfo       ,
#endif
    decimal128ToStringScale                 ,




 -- * Properties
-- ** decimal128 #attr:decimal128#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    Decimal128Decimal128PropertyInfo        ,
#endif
    constructDecimal128Decimal128           ,
#if ENABLE_OVERLOADING
    decimal128Decimal128                    ,
#endif




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

import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Decimal128 = Decimal128 (ManagedPtr Decimal128)
foreign import ccall "garrow_decimal128_get_type"
    c_garrow_decimal128_get_type :: IO GType

instance GObject Decimal128 where
    gobjectType _ = c_garrow_decimal128_get_type
    

-- | Type class for types which can be safely cast to `Decimal128`, for instance with `toDecimal128`.
class GObject o => IsDecimal128 o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Decimal128 a) =>
    IsDecimal128 a
#endif
instance IsDecimal128 Decimal128
instance GObject.Object.IsObject Decimal128

-- | Cast to `Decimal128`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDecimal128 :: (MonadIO m, IsDecimal128 o) => o -> m Decimal128
toDecimal128 = liftIO . unsafeCastTo Decimal128

-- | A convenience alias for `Nothing` :: `Maybe` `Decimal128`.
noDecimal128 :: Maybe Decimal128
noDecimal128 = Nothing

#if ENABLE_OVERLOADING
type family ResolveDecimal128Method (t :: Symbol) (o :: *) :: * where
    ResolveDecimal128Method "abs" o = Decimal128AbsMethodInfo
    ResolveDecimal128Method "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDecimal128Method "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDecimal128Method "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDecimal128Method "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDecimal128Method "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDecimal128Method "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDecimal128Method "negate" o = Decimal128NegateMethodInfo
    ResolveDecimal128Method "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDecimal128Method "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDecimal128Method "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDecimal128Method "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDecimal128Method "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDecimal128Method "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDecimal128Method "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDecimal128Method "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDecimal128Method "toString" o = Decimal128ToStringMethodInfo
    ResolveDecimal128Method "toStringScale" o = Decimal128ToStringScaleMethodInfo
    ResolveDecimal128Method "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDecimal128Method "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDecimal128Method "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDecimal128Method "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDecimal128Method "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDecimal128Method "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDecimal128Method "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDecimal128Method l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDecimal128Method t Decimal128, O.MethodInfo info Decimal128 p) => O.IsLabelProxy t (Decimal128 -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveDecimal128Method t Decimal128, O.MethodInfo info Decimal128 p) => O.IsLabel t (Decimal128 -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "decimal128"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@decimal128@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructDecimal128Decimal128 :: (IsDecimal128 o) => Ptr () -> IO (GValueConstruct o)
constructDecimal128Decimal128 val = constructObjectPropertyPtr "decimal128" val

#if ENABLE_OVERLOADING
data Decimal128Decimal128PropertyInfo
instance AttrInfo Decimal128Decimal128PropertyInfo where
    type AttrAllowedOps Decimal128Decimal128PropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint Decimal128Decimal128PropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint Decimal128Decimal128PropertyInfo = IsDecimal128
    type AttrGetType Decimal128Decimal128PropertyInfo = ()
    type AttrLabel Decimal128Decimal128PropertyInfo = "decimal128"
    type AttrOrigin Decimal128Decimal128PropertyInfo = Decimal128
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructDecimal128Decimal128
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Decimal128
type instance O.AttributeList Decimal128 = Decimal128AttributeList
type Decimal128AttributeList = ('[ '("decimal128", Decimal128Decimal128PropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
decimal128Decimal128 :: AttrLabelProxy "decimal128"
decimal128Decimal128 = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Decimal128 = Decimal128SignalList
type Decimal128SignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Decimal128::new_integer
-- method type : Constructor
-- Args : [Arg {argCName = "data", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The data of the decimal.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Decimal128"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_new_integer" garrow_decimal128_new_integer :: 
    Int64 ->                                -- data : TBasicType TInt64
    IO (Ptr Decimal128)

{- |
/No description available in the introspection data./

@since 0.10.0
-}
decimal128NewInteger ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    Int64
    {- ^ /@data@/: The data of the decimal. -}
    -> m Decimal128
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Decimal128.Decimal128'. -}
decimal128NewInteger data_ = liftIO $ do
    result <- garrow_decimal128_new_integer data_
    checkUnexpectedReturnNULL "decimal128NewInteger" result
    result' <- (wrapObject Decimal128) result
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Decimal128::new_string
-- method type : Constructor
-- Args : [Arg {argCName = "data", argType = TBasicType TUTF8, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The data of the decimal.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Decimal128"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_new_string" garrow_decimal128_new_string :: 
    CString ->                              -- data : TBasicType TUTF8
    IO (Ptr Decimal128)

{- |
/No description available in the introspection data./

@since 0.10.0
-}
decimal128NewString ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    T.Text
    {- ^ /@data@/: The data of the decimal. -}
    -> m Decimal128
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.Decimal128.Decimal128'. -}
decimal128NewString data_ = liftIO $ do
    data_' <- textToCString data_
    result <- garrow_decimal128_new_string data_'
    checkUnexpectedReturnNULL "decimal128NewString" result
    result' <- (wrapObject Decimal128) result
    freeMem data_'
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Decimal128::abs
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "decimal", argType = TInterface (Name {namespace = "Arrow", name = "Decimal128"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDecimal128.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_abs" garrow_decimal128_abs :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO ()

{- |
Computes the absolute value of the /@decimal@/ destructively.

@since 0.10.0
-}
decimal128Abs ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a) =>
    a
    {- ^ /@decimal@/: A 'GI.Arrow.Objects.Decimal128.Decimal128'. -}
    -> m ()
decimal128Abs decimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    garrow_decimal128_abs decimal'
    touchManagedPtr decimal
    return ()

#if ENABLE_OVERLOADING
data Decimal128AbsMethodInfo
instance (signature ~ (m ()), MonadIO m, IsDecimal128 a) => O.MethodInfo Decimal128AbsMethodInfo a signature where
    overloadedMethod _ = decimal128Abs

#endif

-- method Decimal128::negate
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "decimal", argType = TInterface (Name {namespace = "Arrow", name = "Decimal128"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDecimal128.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Nothing
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_negate" garrow_decimal128_negate :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO ()

{- |
Negate the current value of the /@decimal@/ destructively.

@since 0.10.0
-}
decimal128Negate ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a) =>
    a
    {- ^ /@decimal@/: A 'GI.Arrow.Objects.Decimal128.Decimal128'. -}
    -> m ()
decimal128Negate decimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    garrow_decimal128_negate decimal'
    touchManagedPtr decimal
    return ()

#if ENABLE_OVERLOADING
data Decimal128NegateMethodInfo
instance (signature ~ (m ()), MonadIO m, IsDecimal128 a) => O.MethodInfo Decimal128NegateMethodInfo a signature where
    overloadedMethod _ = decimal128Negate

#endif

-- method Decimal128::to_string
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "decimal", argType = TInterface (Name {namespace = "Arrow", name = "Decimal128"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDecimal128.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_to_string" garrow_decimal128_to_string :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    IO CString

{- |
/No description available in the introspection data./

@since 0.10.0
-}
decimal128ToString ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a) =>
    a
    {- ^ /@decimal@/: A 'GI.Arrow.Objects.Decimal128.Decimal128'. -}
    -> m T.Text
    {- ^ __Returns:__ The string representation of the decimal.

It should be freed with 'GI.GLib.Functions.free' when no longer needed. -}
decimal128ToString decimal = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    result <- garrow_decimal128_to_string decimal'
    checkUnexpectedReturnNULL "decimal128ToString" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr decimal
    return result'

#if ENABLE_OVERLOADING
data Decimal128ToStringMethodInfo
instance (signature ~ (m T.Text), MonadIO m, IsDecimal128 a) => O.MethodInfo Decimal128ToStringMethodInfo a signature where
    overloadedMethod _ = decimal128ToString

#endif

-- method Decimal128::to_string_scale
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "decimal", argType = TInterface (Name {namespace = "Arrow", name = "Decimal128"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDecimal128.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "scale", argType = TBasicType TInt32, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The scale of the decimal.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_decimal128_to_string_scale" garrow_decimal128_to_string_scale :: 
    Ptr Decimal128 ->                       -- decimal : TInterface (Name {namespace = "Arrow", name = "Decimal128"})
    Int32 ->                                -- scale : TBasicType TInt32
    IO CString

{- |
/No description available in the introspection data./

@since 0.10.0
-}
decimal128ToStringScale ::
    (B.CallStack.HasCallStack, MonadIO m, IsDecimal128 a) =>
    a
    {- ^ /@decimal@/: A 'GI.Arrow.Objects.Decimal128.Decimal128'. -}
    -> Int32
    {- ^ /@scale@/: The scale of the decimal. -}
    -> m T.Text
    {- ^ __Returns:__ The string representation of the decimal.

It should be freed with 'GI.GLib.Functions.free' when no longer needed. -}
decimal128ToStringScale decimal scale = liftIO $ do
    decimal' <- unsafeManagedPtrCastPtr decimal
    result <- garrow_decimal128_to_string_scale decimal' scale
    checkUnexpectedReturnNULL "decimal128ToStringScale" result
    result' <- cstringToText result
    freeMem result
    touchManagedPtr decimal
    return result'

#if ENABLE_OVERLOADING
data Decimal128ToStringScaleMethodInfo
instance (signature ~ (Int32 -> m T.Text), MonadIO m, IsDecimal128 a) => O.MethodInfo Decimal128ToStringScaleMethodInfo a signature where
    overloadedMethod _ = decimal128ToStringScale

#endif


