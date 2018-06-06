

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.CastOptions
    ( 

-- * Exported types
    CastOptions(..)                         ,
    IsCastOptions                           ,
    toCastOptions                           ,
    noCastOptions                           ,


 -- * Methods
-- ** new #method:new#

    castOptionsNew                          ,




 -- * Properties
-- ** allowIntOverflow #attr:allowIntOverflow#
{- | Whether integer overflow is allowed or not.

@since 0.7.0
-}
#if ENABLE_OVERLOADING
    CastOptionsAllowIntOverflowPropertyInfo ,
#endif
#if ENABLE_OVERLOADING
    castOptionsAllowIntOverflow             ,
#endif
    constructCastOptionsAllowIntOverflow    ,
    getCastOptionsAllowIntOverflow          ,
    setCastOptionsAllowIntOverflow          ,


-- ** allowTimeTruncate #attr:allowTimeTruncate#
{- | Whether truncating time value is allowed or not.

@since 0.8.0
-}
#if ENABLE_OVERLOADING
    CastOptionsAllowTimeTruncatePropertyInfo,
#endif
#if ENABLE_OVERLOADING
    castOptionsAllowTimeTruncate            ,
#endif
    constructCastOptionsAllowTimeTruncate   ,
    getCastOptionsAllowTimeTruncate         ,
    setCastOptionsAllowTimeTruncate         ,




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
newtype CastOptions = CastOptions (ManagedPtr CastOptions)
foreign import ccall "garrow_cast_options_get_type"
    c_garrow_cast_options_get_type :: IO GType

instance GObject CastOptions where
    gobjectType _ = c_garrow_cast_options_get_type
    

-- | Type class for types which can be safely cast to `CastOptions`, for instance with `toCastOptions`.
class GObject o => IsCastOptions o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError CastOptions a) =>
    IsCastOptions a
#endif
instance IsCastOptions CastOptions
instance GObject.Object.IsObject CastOptions

-- | Cast to `CastOptions`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toCastOptions :: (MonadIO m, IsCastOptions o) => o -> m CastOptions
toCastOptions = liftIO . unsafeCastTo CastOptions

-- | A convenience alias for `Nothing` :: `Maybe` `CastOptions`.
noCastOptions :: Maybe CastOptions
noCastOptions = Nothing

#if ENABLE_OVERLOADING
type family ResolveCastOptionsMethod (t :: Symbol) (o :: *) :: * where
    ResolveCastOptionsMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveCastOptionsMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveCastOptionsMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveCastOptionsMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveCastOptionsMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveCastOptionsMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveCastOptionsMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveCastOptionsMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveCastOptionsMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveCastOptionsMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveCastOptionsMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveCastOptionsMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveCastOptionsMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveCastOptionsMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveCastOptionsMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveCastOptionsMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveCastOptionsMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveCastOptionsMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveCastOptionsMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveCastOptionsMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveCastOptionsMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveCastOptionsMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveCastOptionsMethod t CastOptions, O.MethodInfo info CastOptions p) => O.IsLabelProxy t (CastOptions -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveCastOptionsMethod t CastOptions, O.MethodInfo info CastOptions p) => O.IsLabel t (CastOptions -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "allow-int-overflow"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

{- |
Get the value of the “@allow-int-overflow@” property.
When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to

@
'Data.GI.Base.Attributes.get' castOptions #allowIntOverflow
@
-}
getCastOptionsAllowIntOverflow :: (MonadIO m, IsCastOptions o) => o -> m Bool
getCastOptionsAllowIntOverflow obj = liftIO $ getObjectPropertyBool obj "allow-int-overflow"

{- |
Set the value of the “@allow-int-overflow@” property.
When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to

@
'Data.GI.Base.Attributes.set' castOptions [ #allowIntOverflow 'Data.GI.Base.Attributes.:=' value ]
@
-}
setCastOptionsAllowIntOverflow :: (MonadIO m, IsCastOptions o) => o -> Bool -> m ()
setCastOptionsAllowIntOverflow obj val = liftIO $ setObjectPropertyBool obj "allow-int-overflow" val

{- |
Construct a `GValueConstruct` with valid value for the “@allow-int-overflow@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructCastOptionsAllowIntOverflow :: (IsCastOptions o) => Bool -> IO (GValueConstruct o)
constructCastOptionsAllowIntOverflow val = constructObjectPropertyBool "allow-int-overflow" val

#if ENABLE_OVERLOADING
data CastOptionsAllowIntOverflowPropertyInfo
instance AttrInfo CastOptionsAllowIntOverflowPropertyInfo where
    type AttrAllowedOps CastOptionsAllowIntOverflowPropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrSetTypeConstraint CastOptionsAllowIntOverflowPropertyInfo = (~) Bool
    type AttrBaseTypeConstraint CastOptionsAllowIntOverflowPropertyInfo = IsCastOptions
    type AttrGetType CastOptionsAllowIntOverflowPropertyInfo = Bool
    type AttrLabel CastOptionsAllowIntOverflowPropertyInfo = "allow-int-overflow"
    type AttrOrigin CastOptionsAllowIntOverflowPropertyInfo = CastOptions
    attrGet _ = getCastOptionsAllowIntOverflow
    attrSet _ = setCastOptionsAllowIntOverflow
    attrConstruct _ = constructCastOptionsAllowIntOverflow
    attrClear _ = undefined
#endif

-- VVV Prop "allow-time-truncate"
   -- Type: TBasicType TBoolean
   -- Flags: [PropertyReadable,PropertyWritable]
   -- Nullable: (Nothing,Nothing)

{- |
Get the value of the “@allow-time-truncate@” property.
When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to

@
'Data.GI.Base.Attributes.get' castOptions #allowTimeTruncate
@
-}
getCastOptionsAllowTimeTruncate :: (MonadIO m, IsCastOptions o) => o -> m Bool
getCastOptionsAllowTimeTruncate obj = liftIO $ getObjectPropertyBool obj "allow-time-truncate"

{- |
Set the value of the “@allow-time-truncate@” property.
When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to

@
'Data.GI.Base.Attributes.set' castOptions [ #allowTimeTruncate 'Data.GI.Base.Attributes.:=' value ]
@
-}
setCastOptionsAllowTimeTruncate :: (MonadIO m, IsCastOptions o) => o -> Bool -> m ()
setCastOptionsAllowTimeTruncate obj val = liftIO $ setObjectPropertyBool obj "allow-time-truncate" val

{- |
Construct a `GValueConstruct` with valid value for the “@allow-time-truncate@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructCastOptionsAllowTimeTruncate :: (IsCastOptions o) => Bool -> IO (GValueConstruct o)
constructCastOptionsAllowTimeTruncate val = constructObjectPropertyBool "allow-time-truncate" val

#if ENABLE_OVERLOADING
data CastOptionsAllowTimeTruncatePropertyInfo
instance AttrInfo CastOptionsAllowTimeTruncatePropertyInfo where
    type AttrAllowedOps CastOptionsAllowTimeTruncatePropertyInfo = '[ 'AttrSet, 'AttrConstruct, 'AttrGet]
    type AttrSetTypeConstraint CastOptionsAllowTimeTruncatePropertyInfo = (~) Bool
    type AttrBaseTypeConstraint CastOptionsAllowTimeTruncatePropertyInfo = IsCastOptions
    type AttrGetType CastOptionsAllowTimeTruncatePropertyInfo = Bool
    type AttrLabel CastOptionsAllowTimeTruncatePropertyInfo = "allow-time-truncate"
    type AttrOrigin CastOptionsAllowTimeTruncatePropertyInfo = CastOptions
    attrGet _ = getCastOptionsAllowTimeTruncate
    attrSet _ = setCastOptionsAllowTimeTruncate
    attrConstruct _ = constructCastOptionsAllowTimeTruncate
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList CastOptions
type instance O.AttributeList CastOptions = CastOptionsAttributeList
type CastOptionsAttributeList = ('[ '("allowIntOverflow", CastOptionsAllowIntOverflowPropertyInfo), '("allowTimeTruncate", CastOptionsAllowTimeTruncatePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
castOptionsAllowIntOverflow :: AttrLabelProxy "allowIntOverflow"
castOptionsAllowIntOverflow = AttrLabelProxy

castOptionsAllowTimeTruncate :: AttrLabelProxy "allowTimeTruncate"
castOptionsAllowTimeTruncate = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList CastOptions = CastOptionsSignalList
type CastOptionsSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method CastOptions::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "CastOptions"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_cast_options_new" garrow_cast_options_new :: 
    IO (Ptr CastOptions)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
castOptionsNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m CastOptions
    {- ^ __Returns:__ A newly created 'GI.Arrow.Objects.CastOptions.CastOptions'. -}
castOptionsNew  = liftIO $ do
    result <- garrow_cast_options_new
    checkUnexpectedReturnNULL "castOptionsNew" result
    result' <- (wrapObject CastOptions) result
    return result'

#if ENABLE_OVERLOADING
#endif


