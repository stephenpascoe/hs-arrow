

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Enums
    ( 

 -- * Enumerations
-- ** Error #enum:Error#

    Error(..)                               ,
    catchError                              ,
    handleError                             ,


-- ** FileMode #enum:FileMode#

    FileMode(..)                            ,


-- ** MetadataVersion #enum:MetadataVersion#

    MetadataVersion(..)                     ,


-- ** TimeUnit #enum:TimeUnit#

    TimeUnit(..)                            ,


-- ** Type #enum:Type#

    Type(..)                                ,




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


-- Enum Type
{- |
They are corresponding to @arrow::Type::type@ values.
-}
data Type = 
      TypeNa
    {- ^
    A degenerate NULL type represented as 0 bytes\/bits.
    -}
    | TypeBoolean
    {- ^
    A boolean value represented as 1 bit.
    -}
    | TypeUint8
    {- ^
    Little-endian 8bit unsigned integer.
    -}
    | TypeInt8
    {- ^
    Little-endian 8bit signed integer.
    -}
    | TypeUint16
    {- ^
    Little-endian 16bit unsigned integer.
    -}
    | TypeInt16
    {- ^
    Little-endian 16bit signed integer.
    -}
    | TypeUint32
    {- ^
    Little-endian 32bit unsigned integer.
    -}
    | TypeInt32
    {- ^
    Little-endian 32bit signed integer.
    -}
    | TypeUint64
    {- ^
    Little-endian 64bit unsigned integer.
    -}
    | TypeInt64
    {- ^
    Little-endian 64bit signed integer.
    -}
    | TypeHalfFloat
    {- ^
    2-byte floating point value.
    -}
    | TypeFloat
    {- ^
    4-byte floating point value.
    -}
    | TypeDouble
    {- ^
    8-byte floating point value.
    -}
    | TypeString
    {- ^
    UTF-8 variable-length string.
    -}
    | TypeBinary
    {- ^
    Variable-length bytes (no guarantee of UTF-8-ness).
    -}
    | TypeDate32
    {- ^
    int32 days since the UNIX epoch.
    -}
    | TypeDate64
    {- ^
    int64 milliseconds since the UNIX epoch.
    -}
    | TypeTimestamp
    {- ^
    Exact timestamp encoded with int64 since UNIX epoch.
      Default unit millisecond.
    -}
    | TypeTime32
    {- ^
    Exact time encoded with int32, supporting seconds or milliseconds
    -}
    | TypeTime64
    {- ^
    Exact time encoded with int64, supporting micro- or nanoseconds
    -}
    | TypeInterval
    {- ^
    YEAR_MONTH or DAY_TIME interval in SQL style.
    -}
    | TypeDecimal
    {- ^
    Precision- and scale-based decimal
      type. Storage type depends on the parameters.
    -}
    | TypeList
    {- ^
    A list of some logical data type.
    -}
    | TypeStruct
    {- ^
    Struct of logical types.
    -}
    | TypeUnion
    {- ^
    Unions of logical types.
    -}
    | TypeDictionary
    {- ^
    Dictionary aka Category type.
    -}
    | AnotherType Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum Type where
    fromEnum TypeNa = 0
    fromEnum TypeBoolean = 1
    fromEnum TypeUint8 = 2
    fromEnum TypeInt8 = 3
    fromEnum TypeUint16 = 4
    fromEnum TypeInt16 = 5
    fromEnum TypeUint32 = 6
    fromEnum TypeInt32 = 7
    fromEnum TypeUint64 = 8
    fromEnum TypeInt64 = 9
    fromEnum TypeHalfFloat = 10
    fromEnum TypeFloat = 11
    fromEnum TypeDouble = 12
    fromEnum TypeString = 13
    fromEnum TypeBinary = 14
    fromEnum TypeDate32 = 15
    fromEnum TypeDate64 = 16
    fromEnum TypeTimestamp = 17
    fromEnum TypeTime32 = 18
    fromEnum TypeTime64 = 19
    fromEnum TypeInterval = 20
    fromEnum TypeDecimal = 21
    fromEnum TypeList = 22
    fromEnum TypeStruct = 23
    fromEnum TypeUnion = 24
    fromEnum TypeDictionary = 25
    fromEnum (AnotherType k) = k

    toEnum 0 = TypeNa
    toEnum 1 = TypeBoolean
    toEnum 2 = TypeUint8
    toEnum 3 = TypeInt8
    toEnum 4 = TypeUint16
    toEnum 5 = TypeInt16
    toEnum 6 = TypeUint32
    toEnum 7 = TypeInt32
    toEnum 8 = TypeUint64
    toEnum 9 = TypeInt64
    toEnum 10 = TypeHalfFloat
    toEnum 11 = TypeFloat
    toEnum 12 = TypeDouble
    toEnum 13 = TypeString
    toEnum 14 = TypeBinary
    toEnum 15 = TypeDate32
    toEnum 16 = TypeDate64
    toEnum 17 = TypeTimestamp
    toEnum 18 = TypeTime32
    toEnum 19 = TypeTime64
    toEnum 20 = TypeInterval
    toEnum 21 = TypeDecimal
    toEnum 22 = TypeList
    toEnum 23 = TypeStruct
    toEnum 24 = TypeUnion
    toEnum 25 = TypeDictionary
    toEnum k = AnotherType k

instance P.Ord Type where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_type_get_type" c_garrow_type_get_type :: 
    IO GType

instance BoxedEnum Type where
    boxedEnumType _ = c_garrow_type_get_type

-- Enum TimeUnit
{- |
They are corresponding to @arrow::TimeUnit::type@ values.
-}
data TimeUnit = 
      TimeUnitSecond
    {- ^
    Second.
    -}
    | TimeUnitMilli
    {- ^
    Millisecond.
    -}
    | TimeUnitMicro
    {- ^
    Microsecond.
    -}
    | TimeUnitNano
    {- ^
    Nanosecond.
    -}
    | AnotherTimeUnit Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum TimeUnit where
    fromEnum TimeUnitSecond = 0
    fromEnum TimeUnitMilli = 1
    fromEnum TimeUnitMicro = 2
    fromEnum TimeUnitNano = 3
    fromEnum (AnotherTimeUnit k) = k

    toEnum 0 = TimeUnitSecond
    toEnum 1 = TimeUnitMilli
    toEnum 2 = TimeUnitMicro
    toEnum 3 = TimeUnitNano
    toEnum k = AnotherTimeUnit k

instance P.Ord TimeUnit where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_time_unit_get_type" c_garrow_time_unit_get_type :: 
    IO GType

instance BoxedEnum TimeUnit where
    boxedEnumType _ = c_garrow_time_unit_get_type

-- Enum MetadataVersion
{- |
They are corresponding to @arrow::ipc::MetadataVersion::type@
values.
-}
data MetadataVersion = 
      MetadataVersionV1
    {- ^
    Version 1.
    -}
    | MetadataVersionV2
    {- ^
    Version 2.
    -}
    | MetadataVersionV3
    {- ^
    Version 3.
    -}
    | AnotherMetadataVersion Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum MetadataVersion where
    fromEnum MetadataVersionV1 = 0
    fromEnum MetadataVersionV2 = 1
    fromEnum MetadataVersionV3 = 2
    fromEnum (AnotherMetadataVersion k) = k

    toEnum 0 = MetadataVersionV1
    toEnum 1 = MetadataVersionV2
    toEnum 2 = MetadataVersionV3
    toEnum k = AnotherMetadataVersion k

instance P.Ord MetadataVersion where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_metadata_version_get_type" c_garrow_metadata_version_get_type :: 
    IO GType

instance BoxedEnum MetadataVersion where
    boxedEnumType _ = c_garrow_metadata_version_get_type

-- Enum FileMode
{- |
They are corresponding to @arrow::io::FileMode::type@ values.
-}
data FileMode = 
      FileModeRead
    {- ^
    For read.
    -}
    | FileModeWrite
    {- ^
    For write.
    -}
    | FileModeReadwrite
    {- ^
    For read-write.
    -}
    | AnotherFileMode Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum FileMode where
    fromEnum FileModeRead = 0
    fromEnum FileModeWrite = 1
    fromEnum FileModeReadwrite = 2
    fromEnum (AnotherFileMode k) = k

    toEnum 0 = FileModeRead
    toEnum 1 = FileModeWrite
    toEnum 2 = FileModeReadwrite
    toEnum k = AnotherFileMode k

instance P.Ord FileMode where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

foreign import ccall "garrow_file_mode_get_type" c_garrow_file_mode_get_type :: 
    IO GType

instance BoxedEnum FileMode where
    boxedEnumType _ = c_garrow_file_mode_get_type

-- Enum Error
{- |
The error codes are used by all arrow-glib functions.

They are corresponding to @arrow::Status@ values.
-}
data Error = 
      ErrorOutOfMemory
    {- ^
    Out of memory error.
    -}
    | ErrorKey
    {- ^
    Key error.
    -}
    | ErrorType
    {- ^
    Type error.
    -}
    | ErrorInvalid
    {- ^
    Invalid value error.
    -}
    | ErrorIo
    {- ^
    IO error.
    -}
    | ErrorCapacity
    {- ^
    Capacity error.
    -}
    | ErrorUnknown
    {- ^
    Unknown error.
    -}
    | ErrorNotImplemented
    {- ^
    The feature is not implemented.
    -}
    | ErrorSerialization
    {- ^
    Serialization error.
    -}
    | ErrorPython
    {- ^
    Python error.
    -}
    | ErrorPlasmaObjectExists
    {- ^
    Object already exists on Plasma.
    -}
    | ErrorPlasmaObjectNonexistent
    {- ^
    Object doesn\'t exist on Plasma.
    -}
    | ErrorPlasmaStoreFull
    {- ^
    Store full error on Plasma.
    -}
    | ErrorPlasmaObjectAlreadySealed
    {- ^
    Object is already sealed on Plasma.
    -}
    | AnotherError Int
    -- ^ Catch-all for unknown values
    deriving (Show, Eq)

instance P.Enum Error where
    fromEnum ErrorOutOfMemory = 1
    fromEnum ErrorKey = 2
    fromEnum ErrorType = 3
    fromEnum ErrorInvalid = 4
    fromEnum ErrorIo = 5
    fromEnum ErrorCapacity = 6
    fromEnum ErrorUnknown = 9
    fromEnum ErrorNotImplemented = 10
    fromEnum ErrorSerialization = 11
    fromEnum ErrorPython = 12
    fromEnum ErrorPlasmaObjectExists = 20
    fromEnum ErrorPlasmaObjectNonexistent = 21
    fromEnum ErrorPlasmaStoreFull = 22
    fromEnum ErrorPlasmaObjectAlreadySealed = 23
    fromEnum (AnotherError k) = k

    toEnum 1 = ErrorOutOfMemory
    toEnum 2 = ErrorKey
    toEnum 3 = ErrorType
    toEnum 4 = ErrorInvalid
    toEnum 5 = ErrorIo
    toEnum 6 = ErrorCapacity
    toEnum 9 = ErrorUnknown
    toEnum 10 = ErrorNotImplemented
    toEnum 11 = ErrorSerialization
    toEnum 12 = ErrorPython
    toEnum 20 = ErrorPlasmaObjectExists
    toEnum 21 = ErrorPlasmaObjectNonexistent
    toEnum 22 = ErrorPlasmaStoreFull
    toEnum 23 = ErrorPlasmaObjectAlreadySealed
    toEnum k = AnotherError k

instance P.Ord Error where
    compare a b = P.compare (P.fromEnum a) (P.fromEnum b)

instance GErrorClass Error where
    gerrorClassDomain _ = "garrow-error-quark"

-- | Catch exceptions of type `Error`. This is a specialized version of `Data.GI.Base.GError.catchGErrorJustDomain`.
catchError ::
    IO a ->
    (Error -> GErrorMessage -> IO a) ->
    IO a
catchError = catchGErrorJustDomain

-- | Handle exceptions of type `Error`. This is a specialized version of `Data.GI.Base.GError.handleGErrorJustDomain`.
handleError ::
    (Error -> GErrorMessage -> IO a) ->
    IO a ->
    IO a
handleError = handleGErrorJustDomain

foreign import ccall "garrow_error_get_type" c_garrow_error_get_type :: 
    IO GType

instance BoxedEnum Error where
    boxedEnumType _ = c_garrow_error_get_type


