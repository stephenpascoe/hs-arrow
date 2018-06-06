#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))
module GI.Arrow.Objects.Decimal128 where

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

newtype Decimal128 = Decimal128 (ManagedPtr Decimal128)
instance GObject Decimal128 where
class GObject o => IsDecimal128 o
instance IsDecimal128 Decimal128
#if ENABLE_OVERLOADING
data Decimal128Decimal128PropertyInfo
#endif
#if ENABLE_OVERLOADING
data Decimal128AbsMethodInfo
#endif
#if ENABLE_OVERLOADING
data Decimal128NegateMethodInfo
#endif
#if ENABLE_OVERLOADING
data Decimal128ToStringMethodInfo
#endif
#if ENABLE_OVERLOADING
data Decimal128ToStringScaleMethodInfo
#endif
