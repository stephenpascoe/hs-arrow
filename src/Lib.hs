{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE ImplicitPrelude #-}
{-# LANGUAGE FunctionalDependencies #-}

module Lib
    (

    ) where

import Prelude hiding (length)

import qualified GI.Arrow as ARR
import Control.Monad.IO.Class
import GHC.Int (Int8, Int16, Int32, Int64)
import GHC.Float (Float, Double)
import qualified Data.Text as T


class ARR.IsArray a => IsArrowArray a where
  slice     :: (MonadIO m) => Int64 -> Int64 -> a -> m (Maybe a)

class ARR.IsArray a => IsArrayOf a t | a -> t where
  getValue  :: MonadIO m => a -> Int64 -> m t
  getValues :: MonadIO m => a -> m [t]

instance IsArrowArray ARR.Int64Array where
  slice offset length a = do
    genSlice <- ARR.arraySlice a offset length
    mArr <- liftIO $ ARR.castTo ARR.Int64Array genSlice
    return mArr

-- TODO : Other IsArrowArray instances

instance IsArrayOf ARR.Int64Array Int64 where
  getValue  = ARR.int64ArrayGetValue
  getValues = ARR.int64ArrayGetValues


instance IsArrayOf ARR.Int32Array Int32 where
  getValue  = ARR.int32ArrayGetValue
  getValues = ARR.int32ArrayGetValues

instance IsArrayOf ARR.Int16Array Int16 where
  getValue  = ARR.int16ArrayGetValue
  getValues = ARR.int16ArrayGetValues

instance IsArrayOf ARR.Int8Array Int8 where
  getValue  = ARR.int8ArrayGetValue
  getValues = ARR.int8ArrayGetValues

instance IsArrayOf ARR.FloatArray Float where
  getValue  = ARR.floatArrayGetValue
  getValues = ARR.floatArrayGetValues

instance IsArrayOf ARR.DoubleArray Double where
  getValue  = ARR.doubleArrayGetValue
  getValues = ARR.doubleArrayGetValues

instance IsArrayOf ARR.StringArray T.Text where
  getValue = ARR.stringArrayGetString
  -- TODO : No c_glib equivilent.  Implement with foldr or similar
  getValues = undefined


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



--    Nothing -> error "arraySlice returned uncastable array"
--    Just arr ->
{-
  convert $ offset length a
  where convert arr = do
          dType <- ARR.arrayGetValueDataType arr
          mArr <- ARR.arrayCast arr dType Nothing
          case mArr of
            Nothing -> error "Array cannot be cast"
            Just arr' -> return arr'

-}
