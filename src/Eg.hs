{-# LANGUAGE OverloadedStrings #-}

module Eg ( makeArray ) where

import qualified GI.Arrow as ARR
import qualified GI.GLib as GLIB
import qualified Data.ByteString.Char8 as BS
import Control.Monad.IO.Class
import Control.Applicative



makeArray = do
  builder <- ARR.int64ArrayBuilderNew
  ARR.int64ArrayBuilderAppend builder 42
  ARR.int64ArrayBuilderAppend builder 43
  ARR.int64ArrayBuilderAppend builder 44

  mArr <- (ARR.castTo ARR.Int64Array) =<< (ARR.arrayBuilderFinish builder)

  return mArr
