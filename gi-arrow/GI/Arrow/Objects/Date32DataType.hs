

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Date32Type@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Date32DataType
    ( 

-- * Exported types
    Date32DataType(..)                      ,
    IsDate32DataType                        ,
    toDate32DataType                        ,
    noDate32DataType                        ,


 -- * Methods
-- ** new #method:new#

    date32DataTypeNew                       ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Date32DataType = Date32DataType (ManagedPtr Date32DataType)
foreign import ccall "garrow_date32_data_type_get_type"
    c_garrow_date32_data_type_get_type :: IO GType

instance GObject Date32DataType where
    gobjectType _ = c_garrow_date32_data_type_get_type
    

-- | Type class for types which can be safely cast to `Date32DataType`, for instance with `toDate32DataType`.
class GObject o => IsDate32DataType o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Date32DataType a) =>
    IsDate32DataType a
#endif
instance IsDate32DataType Date32DataType
instance Arrow.DataType.IsDataType Date32DataType
instance GObject.Object.IsObject Date32DataType

-- | Cast to `Date32DataType`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toDate32DataType :: (MonadIO m, IsDate32DataType o) => o -> m Date32DataType
toDate32DataType = liftIO . unsafeCastTo Date32DataType

-- | A convenience alias for `Nothing` :: `Maybe` `Date32DataType`.
noDate32DataType :: Maybe Date32DataType
noDate32DataType = Nothing

#if ENABLE_OVERLOADING
type family ResolveDate32DataTypeMethod (t :: Symbol) (o :: *) :: * where
    ResolveDate32DataTypeMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveDate32DataTypeMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveDate32DataTypeMethod "equal" o = Arrow.DataType.DataTypeEqualMethodInfo
    ResolveDate32DataTypeMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveDate32DataTypeMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveDate32DataTypeMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveDate32DataTypeMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveDate32DataTypeMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveDate32DataTypeMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveDate32DataTypeMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveDate32DataTypeMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveDate32DataTypeMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveDate32DataTypeMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveDate32DataTypeMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveDate32DataTypeMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveDate32DataTypeMethod "toString" o = Arrow.DataType.DataTypeToStringMethodInfo
    ResolveDate32DataTypeMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveDate32DataTypeMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveDate32DataTypeMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveDate32DataTypeMethod "getId" o = Arrow.DataType.DataTypeGetIdMethodInfo
    ResolveDate32DataTypeMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveDate32DataTypeMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveDate32DataTypeMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveDate32DataTypeMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveDate32DataTypeMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveDate32DataTypeMethod t Date32DataType, O.MethodInfo info Date32DataType p) => O.IsLabelProxy t (Date32DataType -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveDate32DataTypeMethod t Date32DataType, O.MethodInfo info Date32DataType p) => O.IsLabel t (Date32DataType -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Date32DataType
type instance O.AttributeList Date32DataType = Date32DataTypeAttributeList
type Date32DataTypeAttributeList = ('[ '("dataType", Arrow.DataType.DataTypeDataTypePropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Date32DataType = Date32DataTypeSignalList
type Date32DataTypeSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Date32DataType::new
-- method type : Constructor
-- Args : []
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Date32DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_date32_data_type_new" garrow_date32_data_type_new :: 
    IO (Ptr Date32DataType)

{- |
/No description available in the introspection data./

@since 0.7.0
-}
date32DataTypeNew ::
    (B.CallStack.HasCallStack, MonadIO m) =>
    m Date32DataType
    {- ^ __Returns:__ A newly created the number of milliseconds
  since UNIX epoch in 32-bit signed integer data type. -}
date32DataTypeNew  = liftIO $ do
    result <- garrow_date32_data_type_new
    checkUnexpectedReturnNULL "date32DataTypeNew" result
    result' <- (wrapObject Date32DataType) result
    return result'

#if ENABLE_OVERLOADING
#endif


