#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))
module GI.Arrow.Objects.RecordBatch where

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

newtype RecordBatch = RecordBatch (ManagedPtr RecordBatch)
instance GObject RecordBatch where
class GObject o => IsRecordBatch o
instance IsRecordBatch RecordBatch
#if ENABLE_OVERLOADING
data RecordBatchRecordBatchPropertyInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchAddColumnMethodInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchEqualMethodInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchGetColumnMethodInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchGetColumnNameMethodInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchGetColumnsMethodInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchGetNColumnsMethodInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchGetNRowsMethodInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchGetSchemaMethodInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchRemoveColumnMethodInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchSliceMethodInfo
#endif
#if ENABLE_OVERLOADING
data RecordBatchToStringMethodInfo
#endif
