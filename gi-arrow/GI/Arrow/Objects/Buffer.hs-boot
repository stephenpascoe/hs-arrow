#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))
module GI.Arrow.Objects.Buffer where

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

newtype Buffer = Buffer (ManagedPtr Buffer)
instance GObject Buffer where
class GObject o => IsBuffer o
instance IsBuffer Buffer
#if ENABLE_OVERLOADING
data BufferBufferPropertyInfo
#endif
#if ENABLE_OVERLOADING
data BufferDataPropertyInfo
#endif
#if ENABLE_OVERLOADING
data BufferCopyMethodInfo
#endif
#if ENABLE_OVERLOADING
data BufferEqualMethodInfo
#endif
#if ENABLE_OVERLOADING
data BufferEqualNBytesMethodInfo
#endif
#if ENABLE_OVERLOADING
data BufferGetCapacityMethodInfo
#endif
#if ENABLE_OVERLOADING
data BufferGetDataMethodInfo
#endif
#if ENABLE_OVERLOADING
data BufferGetMutableDataMethodInfo
#endif
#if ENABLE_OVERLOADING
data BufferGetParentMethodInfo
#endif
#if ENABLE_OVERLOADING
data BufferGetSizeMethodInfo
#endif
#if ENABLE_OVERLOADING
data BufferIsMutableMethodInfo
#endif
#if ENABLE_OVERLOADING
data BufferSliceMethodInfo
#endif
