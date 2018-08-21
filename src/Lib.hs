{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE ImplicitPrelude #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE ExistentialQuantification #-}

module Lib
    (

    ) where

import Prelude hiding (length)

import qualified GI.Arrow as ARR
import Control.Monad.IO.Class
import GHC.Int (Int8, Int16, Int32, Int64)
import GHC.Float (Float, Double)
import qualified Data.Text as T
import Data.Proxy (Proxy)

class ARR.IsArray a => IsArrowArray a where
  -- | Cast an array if possible
  maybeCastArray :: (MonadIO m, ARR.IsArray a') => a' -> m (Maybe a)


class ARR.IsArray a => IsArrayOf a t | a -> t where
  getValue  :: MonadIO m => a -> Int64 -> m t
  getValues :: MonadIO m => a -> m [t]


instance IsArrowArray ARR.Int64Array where
  maybeCastArray a = liftIO $ ARR.castTo ARR.Int64Array a

-- TODO : Other IsArrowArray instances

instance IsArrayOf ARR.Int64Array Int64 where
  getValue  = ARR.int64ArrayGetValue
  getValues = ARR.int64ArrayGetValues

instance IsArrowArray ARR.Int32Array where
  maybeCastArray a = liftIO $ ARR.castTo ARR.Int32Array a

instance IsArrayOf ARR.Int32Array Int32 where
  getValue  = ARR.int32ArrayGetValue
  getValues = ARR.int32ArrayGetValues

instance IsArrowArray ARR.Int16Array where
  maybeCastArray a = liftIO $ ARR.castTo ARR.Int16Array a

instance IsArrayOf ARR.Int16Array Int16 where
  getValue  = ARR.int16ArrayGetValue
  getValues = ARR.int16ArrayGetValues

instance IsArrowArray ARR.Int8Array where
  maybeCastArray a = liftIO $ ARR.castTo ARR.Int8Array a

instance IsArrayOf ARR.Int8Array Int8 where
  getValue  = ARR.int8ArrayGetValue
  getValues = ARR.int8ArrayGetValues

instance IsArrowArray ARR.FloatArray where
  maybeCastArray a = liftIO $ ARR.castTo ARR.FloatArray a

instance IsArrayOf ARR.FloatArray Float where
  getValue  = ARR.floatArrayGetValue
  getValues = ARR.floatArrayGetValues

instance IsArrowArray ARR.DoubleArray where
  maybeCastArray a = liftIO $ ARR.castTo ARR.DoubleArray a

instance IsArrayOf ARR.DoubleArray Double where
  getValue  = ARR.doubleArrayGetValue
  getValues = ARR.doubleArrayGetValues

instance IsArrayOf ARR.StringArray T.Text where
  getValue = ARR.stringArrayGetString
  -- TODO : No c_glib equivilent.  Implement with foldr or similar
  getValues = undefined


data ArrowArray = forall a . (ARR.IsArray a, IsArrowArray a) => ArrowArray a
instance ARR.IsArray ArrowArray
instance ARR.GObject ArrowArray where
  gobjectType (ArrowArray a) = ARR.gobjectType a

instance IsArrowArray ArrowArray where
  maybeCastArray (ArrowArray a) = ArrowArray <$> maybeCastArray a

-- TODO : Date types
-- TODO : Lists
-- TODO : Structs

length :: (ARR.IsArray a, MonadIO m) => a -> m Int64
length a = ARR.arrayGetLength a

null :: (ARR.IsArray a, MonadIO m) => a -> m Bool
null a = (== 0) <$> Lib.length a

(!) :: (IsArrayOf a t, MonadIO m) => a -> Int64 -> m t
(!) = getValue

(!?) :: (IsArrayOf a t, MonadIO m) => a -> Int64 -> m (Maybe t)
(!?) a i = do
  len <- length a
  if (i < len) then fmap Just (a!i) else return Nothing

head :: (IsArrayOf a t, MonadIO m) => a -> m t
head a = a!0

-- TODO : last
last :: (IsArrayOf a t, MonadIO m) => a -> m t
last a = do
  len <- length a
  a!(len - 1)


slice :: (MonadIO m, IsArrowArray a) => Int64 -> Int64 -> a -> m (Maybe a)
slice offset length a = do
    genSlice <- ARR.arraySlice a offset length
    mArr <- maybeCastArray genSlice
    return mArr


take :: (MonadIO m, IsArrowArray a) => Int64 -> a -> m (Maybe a)
take n a = do
  len <- length a
  if n > len
    then return (Just a)
    else slice 0 n a

drop :: (MonadIO m, IsArrowArray a) => Int64 -> a -> m (Maybe a)
drop n a = do
  len <- length a
  if n > len
    then return Nothing
    else slice n (len - n) a


-- TODO : what about splitAt 0?  Maybe we need empty array
splitAt :: (MonadIO m, IsArrowArray a) => Int64 -> a -> m (Maybe (a, a))
splitAt n a = undefined
