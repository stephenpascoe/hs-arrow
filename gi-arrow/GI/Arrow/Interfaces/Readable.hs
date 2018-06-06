

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

/No description available in the introspection data./
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Interfaces.Readable
    ( 

-- * Exported types
    Readable(..)                            ,
    noReadable                              ,
    IsReadable                              ,
    toReadable                              ,


 -- * Methods
-- ** read #method:read#

#if ENABLE_OVERLOADING
    ReadableReadMethodInfo                  ,
#endif
    readableRead                            ,




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

import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import qualified GI.GObject.Objects.Object as GObject.Object

-- interface Readable 
-- | Memory-managed wrapper type.
newtype Readable = Readable (ManagedPtr Readable)
-- | A convenience alias for `Nothing` :: `Maybe` `Readable`.
noReadable :: Maybe Readable
noReadable = Nothing

#if ENABLE_OVERLOADING
type instance O.SignalList Readable = ReadableSignalList
type ReadableSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

foreign import ccall "garrow_readable_get_type"
    c_garrow_readable_get_type :: IO GType

instance GObject Readable where
    gobjectType _ = c_garrow_readable_get_type
    

-- | Type class for types which can be safely cast to `Readable`, for instance with `toReadable`.
class GObject o => IsReadable o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Readable a) =>
    IsReadable a
#endif
instance IsReadable Readable
instance GObject.Object.IsObject Readable

-- | Cast to `Readable`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toReadable :: (MonadIO m, IsReadable o) => o -> m Readable
toReadable = liftIO . unsafeCastTo Readable

#if ENABLE_OVERLOADING
instance O.HasAttributeList Readable
type instance O.AttributeList Readable = ReadableAttributeList
type ReadableAttributeList = ('[ ] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
#endif

#if ENABLE_OVERLOADING
type family ResolveReadableMethod (t :: Symbol) (o :: *) :: * where
    ResolveReadableMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveReadableMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveReadableMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveReadableMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveReadableMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveReadableMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveReadableMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveReadableMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveReadableMethod "read" o = ReadableReadMethodInfo
    ResolveReadableMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveReadableMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveReadableMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveReadableMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveReadableMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveReadableMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveReadableMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveReadableMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveReadableMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveReadableMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveReadableMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveReadableMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveReadableMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveReadableMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveReadableMethod t Readable, O.MethodInfo info Readable p) => O.IsLabelProxy t (Readable -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveReadableMethod t Readable, O.MethodInfo info Readable p) => O.IsLabel t (Readable -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- method Readable::read
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "readable", argType = TInterface (Name {namespace = "Arrow", name = "Readable"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowReadable.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_bytes", argType = TBasicType TInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of bytes to be read.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Buffer"}))
-- throws : True
-- Skip return : False

foreign import ccall "garrow_readable_read" garrow_readable_read :: 
    Ptr Readable ->                         -- readable : TInterface (Name {namespace = "Arrow", name = "Readable"})
    Int64 ->                                -- n_bytes : TBasicType TInt64
    Ptr (Ptr GError) ->                     -- error
    IO (Ptr Arrow.Buffer.Buffer)

{- |
/No description available in the introspection data./
-}
readableRead ::
    (B.CallStack.HasCallStack, MonadIO m, IsReadable a) =>
    a
    {- ^ /@readable@/: A 'GI.Arrow.Interfaces.Readable.Readable'. -}
    -> Int64
    {- ^ /@nBytes@/: The number of bytes to be read. -}
    -> m (Maybe Arrow.Buffer.Buffer)
    {- ^ __Returns:__ 'GI.Arrow.Objects.Buffer.Buffer' that has read
  data on success, 'Nothing' if there was an error. /(Can throw 'Data.GI.Base.GError.GError')/ -}
readableRead readable nBytes = liftIO $ do
    readable' <- unsafeManagedPtrCastPtr readable
    onException (do
        result <- propagateGError $ garrow_readable_read readable' nBytes
        maybeResult <- convertIfNonNull result $ \result' -> do
            result'' <- (wrapObject Arrow.Buffer.Buffer) result'
            return result''
        touchManagedPtr readable
        return maybeResult
     ) (do
        return ()
     )

#if ENABLE_OVERLOADING
data ReadableReadMethodInfo
instance (signature ~ (Int64 -> m (Maybe Arrow.Buffer.Buffer)), MonadIO m, IsReadable a) => O.MethodInfo ReadableReadMethodInfo a signature where
    overloadedMethod _ = readableRead

#endif


