#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))
module GI.Arrow.Objects.ChunkedArray where

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

newtype ChunkedArray = ChunkedArray (ManagedPtr ChunkedArray)
instance GObject ChunkedArray where
class GObject o => IsChunkedArray o
instance IsChunkedArray ChunkedArray
#if ENABLE_OVERLOADING
data ChunkedArrayChunkedArrayPropertyInfo
#endif
#if ENABLE_OVERLOADING
data ChunkedArrayEqualMethodInfo
#endif
#if ENABLE_OVERLOADING
data ChunkedArrayGetChunkMethodInfo
#endif
#if ENABLE_OVERLOADING
data ChunkedArrayGetChunksMethodInfo
#endif
#if ENABLE_OVERLOADING
data ChunkedArrayGetLengthMethodInfo
#endif
#if ENABLE_OVERLOADING
data ChunkedArrayGetNChunksMethodInfo
#endif
#if ENABLE_OVERLOADING
data ChunkedArrayGetNNullsMethodInfo
#endif
#if ENABLE_OVERLOADING
data ChunkedArrayGetValueDataTypeMethodInfo
#endif
#if ENABLE_OVERLOADING
data ChunkedArrayGetValueTypeMethodInfo
#endif
#if ENABLE_OVERLOADING
data ChunkedArraySliceMethodInfo
#endif
