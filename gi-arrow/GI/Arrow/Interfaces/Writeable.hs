

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Interfaces.Writeable
    ( 

-- * Exported types
    Writeable(..)                           ,
    noWriteable                             ,
    IsWriteable                             ,
    toWriteable                             ,


 -- * Methods
-- ** flush #method:flush#

#if ENABLE_OVERLOADING
    WriteableFlushMethodInfo                ,
#endif
    writeableFlush                          ,


-- ** write #method:write#

#if ENABLE_OVERLOADING
    WriteableWriteMethodInfo                ,
#endif
    writeableWrite                          ,




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

-- interface Writeable 
-- | Memory-managed wrapper type.
newtype Writeable = Writeable (ManagedPtr Writeable)
-- | A convenience alias for `Nothing` :: `Maybe` `Writeable`.
noWriteable :: Maybe Writeable
noWriteable = Nothing

#if ENABLE_OVERLOADING
type instance O.SignalList Writeable = WriteableSignalList
type WriteableSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "garrow_writeable_get_type"
    c_garrow_writeable_get_type :: IO GType

instance GObject Writeable where
    gobjectType _ = c_garrow_writeable_get_type
    

-- | Type class for types which can be safely cast to `Writeable`, for instance with `toWriteable`.
class GObject o => IsWriteable o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Writeable a) =>
    IsWriteable a
#endif
instance IsWriteable Writeable
instance GObject.Object.IsObject Writeable

-- | Cast to `Writeable`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toWriteable :: (MonadIO m, IsWriteable o) => o -> m Writeable
toWriteable = liftIO . unsafeCastTo Writeable

#if ENABLE_OVERLOADING
instance O.HasAttributeList Writeable
type instance O.AttributeList Writeable = WriteableAttributeList
type WriteableAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type family ResolveWriteableMethod (t :: Symbol) (o :: *) :: * where
    ResolveWriteableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveWriteableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveWriteableMethod "flush" o = WriteableFlushMethodInfo
    ResolveWriteableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveWriteableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveWriteableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveWriteableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveWriteableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveWriteableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveWriteableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveWriteableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveWriteableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveWriteableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveWriteableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveWriteableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveWriteableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveWriteableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveWriteableMethod "write" o = WriteableWriteMethodInfo
    ResolveWriteableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveWriteableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveWriteableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveWriteableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveWriteableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveWriteableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveWriteableMethod t Writeable, O.MethodInfo info Writeable p) => O.IsLabelProxy t (Writeable -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveWriteableMethod t Writeable, O.MethodInfo info Writeable p) => O.IsLabel t (Writeable -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- method Writeable::flush
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "writeable", argType = TInterface (Name {namespace = "Arrow", name = "Writeable"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowWriteable.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_writeable_flush" garrow_writeable_flush :: 
    Ptr Writeable ->                        -- writeable : TInterface (Name {namespace = "Arrow", name = "Writeable"})
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
It ensures writing all data on memory to storage.
-}
writeableFlush ::
    (B.CallStack.HasCallStack, MonadIO m, IsWriteable a) =>
    a
    {- ^ /@writeable@/: A 'GI.Arrow.Interfaces.Writeable.Writeable'. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
writeableFlush writeable = liftIO $ do
    writeable' <- unsafeManagedPtrCastPtr writeable
    onException (do
        _ <- propagateGError $ garrow_writeable_flush writeable'
        touchManagedPtr writeable
        return ()
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data WriteableFlushMethodInfo
instance (signature ~ (m ()), MonadIO m, IsWriteable a) => O.MethodInfo WriteableFlushMethodInfo a signature where
    overloadedMethod _ = writeableFlush

#endif

-- method Writeable::write
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "writeable", argType = TInterface (Name {namespace = "Arrow", name = "Writeable"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowWriteable.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TCArray False (-1) 2 (TBasicType TUInt8), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The data to be written.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_bytes", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of bytes to be written.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "n_bytes", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of bytes to be written.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TBasicType TBoolean)
-- throws : True
-- Skip return : False

foreign import ccall "garrow_writeable_write" garrow_writeable_write :: 
    Ptr Writeable ->                        -- writeable : TInterface (Name {namespace = "Arrow", name = "Writeable"})
    Ptr Word8 ->                            -- data : TCArray False (-1) 2 (TBasicType TUInt8)
    Int64 ->                                -- n_bytes : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO CInt

{- |
/No description available in the introspection data./
-}
writeableWrite ::
    (B.CallStack.HasCallStack, MonadIO m, IsWriteable a) =>
    a
    {- ^ /@writeable@/: A 'GI.Arrow.Interfaces.Writeable.Writeable'. -}
    -> ByteString
    {- ^ /@data@/: The data to be written. -}
    -> m ()
    {- ^ /(Can throw 'Data.GI.Base.GError.GError')/ -}
writeableWrite writeable data_ = liftIO $ do
    let nBytes = fromIntegral $ B.length data_
    writeable' <- unsafeManagedPtrCastPtr writeable
    data_' <- packByteString data_
    onException (do
        _ <- propagateGError $ garrow_writeable_write writeable' data_' nBytes
        touchManagedPtr writeable
        freeMem data_'
        return ()
     ) (do
        freeMem data_'
     )

#if ENABLE_OVERLOADING
data WriteableWriteMethodInfo
instance (signature ~ (ByteString -> m ()), MonadIO m, IsWriteable a) => O.MethodInfo WriteableWriteMethodInfo a signature where
    overloadedMethod _ = writeableWrite

#endif


