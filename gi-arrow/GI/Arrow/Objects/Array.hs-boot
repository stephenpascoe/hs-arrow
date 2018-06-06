#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))
module GI.Arrow.Objects.Array where

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

newtype Array = Array (ManagedPtr Array)
instance GObject Array where
class GObject o => IsArray o
instance IsArray Array
#if ENABLE_OVERLOADING
data ArrayArrayPropertyInfo
#endif
#if ENABLE_OVERLOADING
data ArrayCastMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayDictionaryEncodeMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayEqualMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayEqualApproxMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayEqualRangeMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayGetLengthMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayGetNNullsMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayGetNullBitmapMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayGetOffsetMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayGetValueDataTypeMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayGetValueTypeMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayIsNullMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayIsValidMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArraySliceMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayToStringMethodInfo
#endif
#if ENABLE_OVERLOADING
data ArrayUniqueMethodInfo
#endif
