

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)

It wraps @arrow::Tensor@.
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects.Tensor
    ( 

-- * Exported types
    Tensor(..)                              ,
    IsTensor                                ,
    toTensor                                ,
    noTensor                                ,


 -- * Methods
-- ** equal #method:equal#

#if ENABLE_OVERLOADING
    TensorEqualMethodInfo                   ,
#endif
    tensorEqual                             ,


-- ** getBuffer #method:getBuffer#

#if ENABLE_OVERLOADING
    TensorGetBufferMethodInfo               ,
#endif
    tensorGetBuffer                         ,


-- ** getDimensionName #method:getDimensionName#

#if ENABLE_OVERLOADING
    TensorGetDimensionNameMethodInfo        ,
#endif
    tensorGetDimensionName                  ,


-- ** getNDimensions #method:getNDimensions#

#if ENABLE_OVERLOADING
    TensorGetNDimensionsMethodInfo          ,
#endif
    tensorGetNDimensions                    ,


-- ** getShape #method:getShape#

#if ENABLE_OVERLOADING
    TensorGetShapeMethodInfo                ,
#endif
    tensorGetShape                          ,


-- ** getSize #method:getSize#

#if ENABLE_OVERLOADING
    TensorGetSizeMethodInfo                 ,
#endif
    tensorGetSize                           ,


-- ** getStrides #method:getStrides#

#if ENABLE_OVERLOADING
    TensorGetStridesMethodInfo              ,
#endif
    tensorGetStrides                        ,


-- ** getValueDataType #method:getValueDataType#

#if ENABLE_OVERLOADING
    TensorGetValueDataTypeMethodInfo        ,
#endif
    tensorGetValueDataType                  ,


-- ** getValueType #method:getValueType#

#if ENABLE_OVERLOADING
    TensorGetValueTypeMethodInfo            ,
#endif
    tensorGetValueType                      ,


-- ** isColumnMajor #method:isColumnMajor#

#if ENABLE_OVERLOADING
    TensorIsColumnMajorMethodInfo           ,
#endif
    tensorIsColumnMajor                     ,


-- ** isContiguous #method:isContiguous#

#if ENABLE_OVERLOADING
    TensorIsContiguousMethodInfo            ,
#endif
    tensorIsContiguous                      ,


-- ** isMutable #method:isMutable#

#if ENABLE_OVERLOADING
    TensorIsMutableMethodInfo               ,
#endif
    tensorIsMutable                         ,


-- ** isRowMajor #method:isRowMajor#

#if ENABLE_OVERLOADING
    TensorIsRowMajorMethodInfo              ,
#endif
    tensorIsRowMajor                        ,


-- ** new #method:new#

    tensorNew                               ,




 -- * Properties
-- ** buffer #attr:buffer#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    TensorBufferPropertyInfo                ,
#endif
    constructTensorBuffer                   ,
    getTensorBuffer                         ,
#if ENABLE_OVERLOADING
    tensorBuffer                            ,
#endif


-- ** tensor #attr:tensor#
{- | /No description available in the introspection data./
-}
#if ENABLE_OVERLOADING
    TensorTensorPropertyInfo                ,
#endif
    constructTensorTensor                   ,
#if ENABLE_OVERLOADING
    tensorTensor                            ,
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

import {-# SOURCE #-} qualified GI.Arrow.Enums as Arrow.Enums
import {-# SOURCE #-} qualified GI.Arrow.Objects.Buffer as Arrow.Buffer
import {-# SOURCE #-} qualified GI.Arrow.Objects.DataType as Arrow.DataType
import qualified GI.GObject.Objects.Object as GObject.Object

-- | Memory-managed wrapper type.
newtype Tensor = Tensor (ManagedPtr Tensor)
foreign import ccall "garrow_tensor_get_type"
    c_garrow_tensor_get_type :: IO GType

instance GObject Tensor where
    gobjectType _ = c_garrow_tensor_get_type
    

-- | Type class for types which can be safely cast to `Tensor`, for instance with `toTensor`.
class GObject o => IsTensor o
#if MIN_VERSION_base(4,9,0)
instance {-# OVERLAPPABLE #-} (GObject a, O.UnknownAncestorError Tensor a) =>
    IsTensor a
#endif
instance IsTensor Tensor
instance GObject.Object.IsObject Tensor

-- | Cast to `Tensor`, for types for which this is known to be safe. For general casts, use `Data.GI.Base.ManagedPtr.castTo`.
toTensor :: (MonadIO m, IsTensor o) => o -> m Tensor
toTensor = liftIO . unsafeCastTo Tensor

-- | A convenience alias for `Nothing` :: `Maybe` `Tensor`.
noTensor :: Maybe Tensor
noTensor = Nothing

#if ENABLE_OVERLOADING
type family ResolveTensorMethod (t :: Symbol) (o :: *) :: * where
    ResolveTensorMethod "bindProperty" o = GObject.Object.ObjectBindPropertyMethodInfo
    ResolveTensorMethod "bindPropertyFull" o = GObject.Object.ObjectBindPropertyFullMethodInfo
    ResolveTensorMethod "equal" o = TensorEqualMethodInfo
    ResolveTensorMethod "forceFloating" o = GObject.Object.ObjectForceFloatingMethodInfo
    ResolveTensorMethod "freezeNotify" o = GObject.Object.ObjectFreezeNotifyMethodInfo
    ResolveTensorMethod "getv" o = GObject.Object.ObjectGetvMethodInfo
    ResolveTensorMethod "isColumnMajor" o = TensorIsColumnMajorMethodInfo
    ResolveTensorMethod "isContiguous" o = TensorIsContiguousMethodInfo
    ResolveTensorMethod "isFloating" o = GObject.Object.ObjectIsFloatingMethodInfo
    ResolveTensorMethod "isMutable" o = TensorIsMutableMethodInfo
    ResolveTensorMethod "isRowMajor" o = TensorIsRowMajorMethodInfo
    ResolveTensorMethod "notify" o = GObject.Object.ObjectNotifyMethodInfo
    ResolveTensorMethod "notifyByPspec" o = GObject.Object.ObjectNotifyByPspecMethodInfo
    ResolveTensorMethod "ref" o = GObject.Object.ObjectRefMethodInfo
    ResolveTensorMethod "refSink" o = GObject.Object.ObjectRefSinkMethodInfo
    ResolveTensorMethod "runDispose" o = GObject.Object.ObjectRunDisposeMethodInfo
    ResolveTensorMethod "stealData" o = GObject.Object.ObjectStealDataMethodInfo
    ResolveTensorMethod "stealQdata" o = GObject.Object.ObjectStealQdataMethodInfo
    ResolveTensorMethod "thawNotify" o = GObject.Object.ObjectThawNotifyMethodInfo
    ResolveTensorMethod "unref" o = GObject.Object.ObjectUnrefMethodInfo
    ResolveTensorMethod "watchClosure" o = GObject.Object.ObjectWatchClosureMethodInfo
    ResolveTensorMethod "getBuffer" o = TensorGetBufferMethodInfo
    ResolveTensorMethod "getData" o = GObject.Object.ObjectGetDataMethodInfo
    ResolveTensorMethod "getDimensionName" o = TensorGetDimensionNameMethodInfo
    ResolveTensorMethod "getNDimensions" o = TensorGetNDimensionsMethodInfo
    ResolveTensorMethod "getProperty" o = GObject.Object.ObjectGetPropertyMethodInfo
    ResolveTensorMethod "getQdata" o = GObject.Object.ObjectGetQdataMethodInfo
    ResolveTensorMethod "getShape" o = TensorGetShapeMethodInfo
    ResolveTensorMethod "getSize" o = TensorGetSizeMethodInfo
    ResolveTensorMethod "getStrides" o = TensorGetStridesMethodInfo
    ResolveTensorMethod "getValueDataType" o = TensorGetValueDataTypeMethodInfo
    ResolveTensorMethod "getValueType" o = TensorGetValueTypeMethodInfo
    ResolveTensorMethod "setData" o = GObject.Object.ObjectSetDataMethodInfo
    ResolveTensorMethod "setProperty" o = GObject.Object.ObjectSetPropertyMethodInfo
    ResolveTensorMethod l o = O.MethodResolutionFailed l o

instance (info ~ ResolveTensorMethod t Tensor, O.MethodInfo info Tensor p) => O.IsLabelProxy t (Tensor -> p) where
    fromLabelProxy _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)

#if MIN_VERSION_base(4,9,0)
instance (info ~ ResolveTensorMethod t Tensor, O.MethodInfo info Tensor p) => O.IsLabel t (Tensor -> p) where
#if MIN_VERSION_base(4,10,0)
    fromLabel = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#else
    fromLabel _ = O.overloadedMethod (O.MethodProxy :: O.MethodProxy info)
#endif
#endif

#endif

-- VVV Prop "buffer"
   -- Type: TInterface (Name {namespace = "Arrow", name = "Buffer"})
   -- Flags: [PropertyReadable,PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Get the value of the “@buffer@” property.
When <https://github.com/haskell-gi/haskell-gi/wiki/Overloading overloading> is enabled, this is equivalent to

@
'Data.GI.Base.Attributes.get' tensor #buffer
@
-}
getTensorBuffer :: (MonadIO m, IsTensor o) => o -> m (Maybe Arrow.Buffer.Buffer)
getTensorBuffer obj = liftIO $ getObjectPropertyObject obj "buffer" Arrow.Buffer.Buffer

{- |
Construct a `GValueConstruct` with valid value for the “@buffer@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructTensorBuffer :: (IsTensor o, Arrow.Buffer.IsBuffer a) => a -> IO (GValueConstruct o)
constructTensorBuffer val = constructObjectPropertyObject "buffer" (Just val)

#if ENABLE_OVERLOADING
data TensorBufferPropertyInfo
instance AttrInfo TensorBufferPropertyInfo where
    type AttrAllowedOps TensorBufferPropertyInfo = '[ 'AttrConstruct, 'AttrGet, 'AttrClear]
    type AttrSetTypeConstraint TensorBufferPropertyInfo = Arrow.Buffer.IsBuffer
    type AttrBaseTypeConstraint TensorBufferPropertyInfo = IsTensor
    type AttrGetType TensorBufferPropertyInfo = (Maybe Arrow.Buffer.Buffer)
    type AttrLabel TensorBufferPropertyInfo = "buffer"
    type AttrOrigin TensorBufferPropertyInfo = Tensor
    attrGet _ = getTensorBuffer
    attrSet _ = undefined
    attrConstruct _ = constructTensorBuffer
    attrClear _ = undefined
#endif

-- VVV Prop "tensor"
   -- Type: TBasicType TPtr
   -- Flags: [PropertyWritable,PropertyConstructOnly]
   -- Nullable: (Nothing,Nothing)

{- |
Construct a `GValueConstruct` with valid value for the “@tensor@” property. This is rarely needed directly, but it is used by `Data.GI.Base.Constructible.new`.
-}
constructTensorTensor :: (IsTensor o) => Ptr () -> IO (GValueConstruct o)
constructTensorTensor val = constructObjectPropertyPtr "tensor" val

#if ENABLE_OVERLOADING
data TensorTensorPropertyInfo
instance AttrInfo TensorTensorPropertyInfo where
    type AttrAllowedOps TensorTensorPropertyInfo = '[ 'AttrConstruct]
    type AttrSetTypeConstraint TensorTensorPropertyInfo = (~) (Ptr ())
    type AttrBaseTypeConstraint TensorTensorPropertyInfo = IsTensor
    type AttrGetType TensorTensorPropertyInfo = ()
    type AttrLabel TensorTensorPropertyInfo = "tensor"
    type AttrOrigin TensorTensorPropertyInfo = Tensor
    attrGet _ = undefined
    attrSet _ = undefined
    attrConstruct _ = constructTensorTensor
    attrClear _ = undefined
#endif

#if ENABLE_OVERLOADING
instance O.HasAttributeList Tensor
type instance O.AttributeList Tensor = TensorAttributeList
type TensorAttributeList = ('[ '("buffer", TensorBufferPropertyInfo), '("tensor", TensorTensorPropertyInfo)] :: [(Symbol, *)])
#endif

#if ENABLE_OVERLOADING
tensorBuffer :: AttrLabelProxy "buffer"
tensorBuffer = AttrLabelProxy

tensorTensor :: AttrLabelProxy "tensor"
tensorTensor = AttrLabelProxy

#endif

#if ENABLE_OVERLOADING
type instance O.SignalList Tensor = TensorSignalList
type TensorSignalList = ('[ '("notify", GObject.Object.ObjectNotifySignalInfo)] :: [(Symbol, *)])

#endif

-- method Tensor::new
-- method type : Constructor
-- Args : [Arg {argCName = "data_type", argType = TInterface (Name {namespace = "Arrow", name = "DataType"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowDataType that indicates each element type\n  in the tensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "data", argType = TInterface (Name {namespace = "Arrow", name = "Buffer"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowBuffer that contains tensor data.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "shape", argType = TCArray False (-1) 3 (TBasicType TInt64), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A list of dimension sizes.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_dimensions", argType = TBasicType TUInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of dimensions.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "strides", argType = TCArray False (-1) 5 (TBasicType TInt64), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "A list of the number of\n  bytes in each dimension.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_strides", argType = TBasicType TUInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of strides.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "dimention_names", argType = TCArray False (-1) 7 (TBasicType TUTF8), direction = DirectionIn, mayBeNull = True, argDoc = Documentation {rawDocText = Just "A list of\n  dimension names.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_dimention_names", argType = TBasicType TUInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of dimension names", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : [Arg {argCName = "n_dimention_names", argType = TBasicType TUInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of dimension names", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_strides", argType = TBasicType TUInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of strides.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_dimensions", argType = TBasicType TUInt64, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of dimensions.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Tensor"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_new" garrow_tensor_new :: 
    Ptr Arrow.DataType.DataType ->          -- data_type : TInterface (Name {namespace = "Arrow", name = "DataType"})
    Ptr Arrow.Buffer.Buffer ->              -- data : TInterface (Name {namespace = "Arrow", name = "Buffer"})
    Ptr Int64 ->                            -- shape : TCArray False (-1) 3 (TBasicType TInt64)
    Word64 ->                               -- n_dimensions : TBasicType TUInt64
    Ptr Int64 ->                            -- strides : TCArray False (-1) 5 (TBasicType TInt64)
    Word64 ->                               -- n_strides : TBasicType TUInt64
    Ptr CString ->                          -- dimention_names : TCArray False (-1) 7 (TBasicType TUTF8)
    Word64 ->                               -- n_dimention_names : TBasicType TUInt64
    IO (Ptr Tensor)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorNew ::
    (B.CallStack.HasCallStack, MonadIO m, Arrow.DataType.IsDataType a, Arrow.Buffer.IsBuffer b) =>
    a
    {- ^ /@dataType@/: A 'GI.Arrow.Objects.DataType.DataType' that indicates each element type
  in the tensor. -}
    -> b
    {- ^ /@data@/: A 'GI.Arrow.Objects.Buffer.Buffer' that contains tensor data. -}
    -> [Int64]
    {- ^ /@shape@/: A list of dimension sizes. -}
    -> Maybe ([Int64])
    {- ^ /@strides@/: A list of the number of
  bytes in each dimension. -}
    -> Maybe ([T.Text])
    {- ^ /@dimentionNames@/: A list of
  dimension names. -}
    -> m Tensor
    {- ^ __Returns:__ The newly created 'GI.Arrow.Objects.Tensor.Tensor'. -}
tensorNew dataType data_ shape strides dimentionNames = liftIO $ do
    let nDimentionNames = case dimentionNames of
            Nothing -> 0
            Just jDimentionNames -> fromIntegral $ length jDimentionNames
    let nStrides = case strides of
            Nothing -> 0
            Just jStrides -> fromIntegral $ length jStrides
    let nDimensions = fromIntegral $ length shape
    dataType' <- unsafeManagedPtrCastPtr dataType
    data_' <- unsafeManagedPtrCastPtr data_
    shape' <- packStorableArray shape
    maybeStrides <- case strides of
        Nothing -> return nullPtr
        Just jStrides -> do
            jStrides' <- packStorableArray jStrides
            return jStrides'
    maybeDimentionNames <- case dimentionNames of
        Nothing -> return nullPtr
        Just jDimentionNames -> do
            jDimentionNames' <- packUTF8CArray jDimentionNames
            return jDimentionNames'
    result <- garrow_tensor_new dataType' data_' shape' nDimensions maybeStrides nStrides maybeDimentionNames nDimentionNames
    checkUnexpectedReturnNULL "tensorNew" result
    result' <- (wrapObject Tensor) result
    touchManagedPtr dataType
    touchManagedPtr data_
    freeMem shape'
    freeMem maybeStrides
    (mapCArrayWithLength nDimentionNames) freeMem maybeDimentionNames
    freeMem maybeDimentionNames
    return result'

#if ENABLE_OVERLOADING
#endif

-- method Tensor::equal
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "other_tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor to be compared.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_equal" garrow_tensor_equal :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    Ptr Tensor ->                           -- other_tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.4.0
-}
tensorEqual ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a, IsTensor b) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> b
    {- ^ /@otherTensor@/: A 'GI.Arrow.Objects.Tensor.Tensor' to be compared. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if both of them have the same data, 'False'
  otherwise. -}
tensorEqual tensor otherTensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    otherTensor' <- unsafeManagedPtrCastPtr otherTensor
    result <- garrow_tensor_equal tensor' otherTensor'
    let result' = (/= 0) result
    touchManagedPtr tensor
    touchManagedPtr otherTensor
    return result'

#if ENABLE_OVERLOADING
data TensorEqualMethodInfo
instance (signature ~ (b -> m Bool), MonadIO m, IsTensor a, IsTensor b) => O.MethodInfo TensorEqualMethodInfo a signature where
    overloadedMethod _ = tensorEqual

#endif

-- method Tensor::get_buffer
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Buffer"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_get_buffer" garrow_tensor_get_buffer :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    IO (Ptr Arrow.Buffer.Buffer)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorGetBuffer ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m Arrow.Buffer.Buffer
    {- ^ __Returns:__ The data of the tensor. -}
tensorGetBuffer tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    result <- garrow_tensor_get_buffer tensor'
    checkUnexpectedReturnNULL "tensorGetBuffer" result
    result' <- (wrapObject Arrow.Buffer.Buffer) result
    touchManagedPtr tensor
    return result'

#if ENABLE_OVERLOADING
data TensorGetBufferMethodInfo
instance (signature ~ (m Arrow.Buffer.Buffer), MonadIO m, IsTensor a) => O.MethodInfo TensorGetBufferMethodInfo a signature where
    overloadedMethod _ = tensorGetBuffer

#endif

-- method Tensor::get_dimension_name
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "i", argType = TBasicType TInt, direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The index of the target dimension.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TUTF8)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_get_dimension_name" garrow_tensor_get_dimension_name :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    Int32 ->                                -- i : TBasicType TInt
    IO CString

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorGetDimensionName ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> Int32
    {- ^ /@i@/: The index of the target dimension. -}
    -> m T.Text
    {- ^ __Returns:__ The i-th dimension name of the tensor. -}
tensorGetDimensionName tensor i = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    result <- garrow_tensor_get_dimension_name tensor' i
    checkUnexpectedReturnNULL "tensorGetDimensionName" result
    result' <- cstringToText result
    touchManagedPtr tensor
    return result'

#if ENABLE_OVERLOADING
data TensorGetDimensionNameMethodInfo
instance (signature ~ (Int32 -> m T.Text), MonadIO m, IsTensor a) => O.MethodInfo TensorGetDimensionNameMethodInfo a signature where
    overloadedMethod _ = tensorGetDimensionName

#endif

-- method Tensor::get_n_dimensions
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_get_n_dimensions" garrow_tensor_get_n_dimensions :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    IO Int32

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorGetNDimensions ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m Int32
    {- ^ __Returns:__ The number of dimensions of the tensor. -}
tensorGetNDimensions tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    result <- garrow_tensor_get_n_dimensions tensor'
    touchManagedPtr tensor
    return result

#if ENABLE_OVERLOADING
data TensorGetNDimensionsMethodInfo
instance (signature ~ (m Int32), MonadIO m, IsTensor a) => O.MethodInfo TensorGetNDimensionsMethodInfo a signature where
    overloadedMethod _ = tensorGetNDimensions

#endif

-- method Tensor::get_shape
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_dimensions", argType = TBasicType TInt, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of dimensions.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "n_dimensions", argType = TBasicType TInt, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of dimensions.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TInt64))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_get_shape" garrow_tensor_get_shape :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    Ptr Int32 ->                            -- n_dimensions : TBasicType TInt
    IO (Ptr Int64)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorGetShape ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m [Int64]
    {- ^ __Returns:__ The shape of the tensor.
  It should be freed with 'GI.GLib.Functions.free' when no longer needed. -}
tensorGetShape tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    nDimensions <- allocMem :: IO (Ptr Int32)
    result <- garrow_tensor_get_shape tensor' nDimensions
    nDimensions' <- peek nDimensions
    checkUnexpectedReturnNULL "tensorGetShape" result
    result' <- (unpackStorableArrayWithLength nDimensions') result
    touchManagedPtr tensor
    freeMem nDimensions
    return result'

#if ENABLE_OVERLOADING
data TensorGetShapeMethodInfo
instance (signature ~ (m [Int64]), MonadIO m, IsTensor a) => O.MethodInfo TensorGetShapeMethodInfo a signature where
    overloadedMethod _ = tensorGetShape

#endif

-- method Tensor::get_size
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TInt64)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_get_size" garrow_tensor_get_size :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    IO Int64

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorGetSize ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m Int64
    {- ^ __Returns:__ The number of value cells in the tensor. -}
tensorGetSize tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    result <- garrow_tensor_get_size tensor'
    touchManagedPtr tensor
    return result

#if ENABLE_OVERLOADING
data TensorGetSizeMethodInfo
instance (signature ~ (m Int64), MonadIO m, IsTensor a) => O.MethodInfo TensorGetSizeMethodInfo a signature where
    overloadedMethod _ = tensorGetSize

#endif

-- method Tensor::get_strides
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing},Arg {argCName = "n_strides", argType = TBasicType TInt, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of strides.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- Lengths : [Arg {argCName = "n_strides", argType = TBasicType TInt, direction = DirectionOut, mayBeNull = False, argDoc = Documentation {rawDocText = Just "The number of strides.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferEverything}]
-- returnType : Just (TCArray False (-1) 1 (TBasicType TInt64))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_get_strides" garrow_tensor_get_strides :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    Ptr Int32 ->                            -- n_strides : TBasicType TInt
    IO (Ptr Int64)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorGetStrides ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m [Int64]
    {- ^ __Returns:__ The strides of the tensor.
  It should be freed with 'GI.GLib.Functions.free' when no longer needed. -}
tensorGetStrides tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    nStrides <- allocMem :: IO (Ptr Int32)
    result <- garrow_tensor_get_strides tensor' nStrides
    nStrides' <- peek nStrides
    checkUnexpectedReturnNULL "tensorGetStrides" result
    result' <- (unpackStorableArrayWithLength nStrides') result
    touchManagedPtr tensor
    freeMem nStrides
    return result'

#if ENABLE_OVERLOADING
data TensorGetStridesMethodInfo
instance (signature ~ (m [Int64]), MonadIO m, IsTensor a) => O.MethodInfo TensorGetStridesMethodInfo a signature where
    overloadedMethod _ = tensorGetStrides

#endif

-- method Tensor::get_value_data_type
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "DataType"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_get_value_data_type" garrow_tensor_get_value_data_type :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    IO (Ptr Arrow.DataType.DataType)

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorGetValueDataType ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m Arrow.DataType.DataType
    {- ^ __Returns:__ The data type of each value in the tensor. -}
tensorGetValueDataType tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    result <- garrow_tensor_get_value_data_type tensor'
    checkUnexpectedReturnNULL "tensorGetValueDataType" result
    result' <- (wrapObject Arrow.DataType.DataType) result
    touchManagedPtr tensor
    return result'

#if ENABLE_OVERLOADING
data TensorGetValueDataTypeMethodInfo
instance (signature ~ (m Arrow.DataType.DataType), MonadIO m, IsTensor a) => O.MethodInfo TensorGetValueDataTypeMethodInfo a signature where
    overloadedMethod _ = tensorGetValueDataType

#endif

-- method Tensor::get_value_type
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TInterface (Name {namespace = "Arrow", name = "Type"}))
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_get_value_type" garrow_tensor_get_value_type :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    IO CUInt

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorGetValueType ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m Arrow.Enums.Type
    {- ^ __Returns:__ The type of each value in the tensor. -}
tensorGetValueType tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    result <- garrow_tensor_get_value_type tensor'
    let result' = (toEnum . fromIntegral) result
    touchManagedPtr tensor
    return result'

#if ENABLE_OVERLOADING
data TensorGetValueTypeMethodInfo
instance (signature ~ (m Arrow.Enums.Type), MonadIO m, IsTensor a) => O.MethodInfo TensorGetValueTypeMethodInfo a signature where
    overloadedMethod _ = tensorGetValueType

#endif

-- method Tensor::is_column_major
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_is_column_major" garrow_tensor_is_column_major :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorIsColumnMajor ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if the tensor is column major a.k.a. Fortran order,
  'False' otherwise. -}
tensorIsColumnMajor tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    result <- garrow_tensor_is_column_major tensor'
    let result' = (/= 0) result
    touchManagedPtr tensor
    return result'

#if ENABLE_OVERLOADING
data TensorIsColumnMajorMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTensor a) => O.MethodInfo TensorIsColumnMajorMethodInfo a signature where
    overloadedMethod _ = tensorIsColumnMajor

#endif

-- method Tensor::is_contiguous
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_is_contiguous" garrow_tensor_is_contiguous :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorIsContiguous ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if the tensor is contiguous, 'False' otherwise. -}
tensorIsContiguous tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    result <- garrow_tensor_is_contiguous tensor'
    let result' = (/= 0) result
    touchManagedPtr tensor
    return result'

#if ENABLE_OVERLOADING
data TensorIsContiguousMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTensor a) => O.MethodInfo TensorIsContiguousMethodInfo a signature where
    overloadedMethod _ = tensorIsContiguous

#endif

-- method Tensor::is_mutable
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_is_mutable" garrow_tensor_is_mutable :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorIsMutable ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if the tensor is mutable, 'False' otherwise. -}
tensorIsMutable tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    result <- garrow_tensor_is_mutable tensor'
    let result' = (/= 0) result
    touchManagedPtr tensor
    return result'

#if ENABLE_OVERLOADING
data TensorIsMutableMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTensor a) => O.MethodInfo TensorIsMutableMethodInfo a signature where
    overloadedMethod _ = tensorIsMutable

#endif

-- method Tensor::is_row_major
-- method type : OrdinaryMethod
-- Args : [Arg {argCName = "tensor", argType = TInterface (Name {namespace = "Arrow", name = "Tensor"}), direction = DirectionIn, mayBeNull = False, argDoc = Documentation {rawDocText = Just "A #GArrowTensor.", sinceVersion = Nothing}, argScope = ScopeTypeInvalid, argClosure = -1, argDestroy = -1, argCallerAllocates = False, transfer = TransferNothing}]
-- Lengths : []
-- returnType : Just (TBasicType TBoolean)
-- throws : False
-- Skip return : False

foreign import ccall "garrow_tensor_is_row_major" garrow_tensor_is_row_major :: 
    Ptr Tensor ->                           -- tensor : TInterface (Name {namespace = "Arrow", name = "Tensor"})
    IO CInt

{- |
/No description available in the introspection data./

@since 0.3.0
-}
tensorIsRowMajor ::
    (B.CallStack.HasCallStack, MonadIO m, IsTensor a) =>
    a
    {- ^ /@tensor@/: A 'GI.Arrow.Objects.Tensor.Tensor'. -}
    -> m Bool
    {- ^ __Returns:__ 'True' if the tensor is row major a.k.a. C order,
  'False' otherwise. -}
tensorIsRowMajor tensor = liftIO $ do
    tensor' <- unsafeManagedPtrCastPtr tensor
    result <- garrow_tensor_is_row_major tensor'
    let result' = (/= 0) result
    touchManagedPtr tensor
    return result'

#if ENABLE_OVERLOADING
data TensorIsRowMajorMethodInfo
instance (signature ~ (m Bool), MonadIO m, IsTensor a) => O.MethodInfo TensorIsRowMajorMethodInfo a signature where
    overloadedMethod _ = tensorIsRowMajor

#endif


