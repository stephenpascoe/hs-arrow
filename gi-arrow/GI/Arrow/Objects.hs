

{- |
Copyright  : Will Thompson, Iñaki García Etxebarria and Jonas Platte
License    : LGPL-2.1
Maintainer : Iñaki García Etxebarria (garetxe@gmail.com)
-}

#define ENABLE_OVERLOADING (MIN_VERSION_haskell_gi_overloading(1,0,0) \
       && !defined(__HADDOCK_VERSION__))

module GI.Arrow.Objects
    (     module GI.Arrow.Objects.Array           ,
    module GI.Arrow.Objects.ArrayBuilder    ,
    module GI.Arrow.Objects.BinaryArray     ,
    module GI.Arrow.Objects.BinaryArrayBuilder,
    module GI.Arrow.Objects.BinaryDataType  ,
    module GI.Arrow.Objects.BooleanArray    ,
    module GI.Arrow.Objects.BooleanArrayBuilder,
    module GI.Arrow.Objects.BooleanDataType ,
    module GI.Arrow.Objects.Buffer          ,
    module GI.Arrow.Objects.BufferInputStream,
    module GI.Arrow.Objects.BufferOutputStream,
    module GI.Arrow.Objects.CastOptions     ,
    module GI.Arrow.Objects.ChunkedArray    ,
    module GI.Arrow.Objects.Column          ,
    module GI.Arrow.Objects.DataType        ,
    module GI.Arrow.Objects.Date32Array     ,
    module GI.Arrow.Objects.Date32ArrayBuilder,
    module GI.Arrow.Objects.Date32DataType  ,
    module GI.Arrow.Objects.Date64Array     ,
    module GI.Arrow.Objects.Date64ArrayBuilder,
    module GI.Arrow.Objects.Date64DataType  ,
    module GI.Arrow.Objects.Decimal128      ,
    module GI.Arrow.Objects.DictionaryArray ,
    module GI.Arrow.Objects.DictionaryDataType,
    module GI.Arrow.Objects.DoubleArray     ,
    module GI.Arrow.Objects.DoubleArrayBuilder,
    module GI.Arrow.Objects.DoubleDataType  ,
    module GI.Arrow.Objects.FeatherFileReader,
    module GI.Arrow.Objects.FeatherFileWriter,
    module GI.Arrow.Objects.Field           ,
    module GI.Arrow.Objects.FileOutputStream,
    module GI.Arrow.Objects.FixedWidthDataType,
    module GI.Arrow.Objects.FloatArray      ,
    module GI.Arrow.Objects.FloatArrayBuilder,
    module GI.Arrow.Objects.FloatDataType   ,
    module GI.Arrow.Objects.FloatingPointDataType,
    module GI.Arrow.Objects.GIOInputStream  ,
    module GI.Arrow.Objects.GIOOutputStream ,
    module GI.Arrow.Objects.InputStream     ,
    module GI.Arrow.Objects.Int16Array      ,
    module GI.Arrow.Objects.Int16ArrayBuilder,
    module GI.Arrow.Objects.Int16DataType   ,
    module GI.Arrow.Objects.Int32Array      ,
    module GI.Arrow.Objects.Int32ArrayBuilder,
    module GI.Arrow.Objects.Int32DataType   ,
    module GI.Arrow.Objects.Int64Array      ,
    module GI.Arrow.Objects.Int64ArrayBuilder,
    module GI.Arrow.Objects.Int64DataType   ,
    module GI.Arrow.Objects.Int8Array       ,
    module GI.Arrow.Objects.Int8ArrayBuilder,
    module GI.Arrow.Objects.Int8DataType    ,
    module GI.Arrow.Objects.IntArrayBuilder ,
    module GI.Arrow.Objects.IntegerDataType ,
    module GI.Arrow.Objects.ListArray       ,
    module GI.Arrow.Objects.ListArrayBuilder,
    module GI.Arrow.Objects.ListDataType    ,
    module GI.Arrow.Objects.MemoryMappedInputStream,
    module GI.Arrow.Objects.MutableBuffer   ,
    module GI.Arrow.Objects.NullArray       ,
    module GI.Arrow.Objects.NullDataType    ,
    module GI.Arrow.Objects.NumericArray    ,
    module GI.Arrow.Objects.NumericDataType ,
    module GI.Arrow.Objects.OutputStream    ,
    module GI.Arrow.Objects.PoolBuffer      ,
    module GI.Arrow.Objects.PrimitiveArray  ,
    module GI.Arrow.Objects.RecordBatch     ,
    module GI.Arrow.Objects.RecordBatchBuilder,
    module GI.Arrow.Objects.RecordBatchFileReader,
    module GI.Arrow.Objects.RecordBatchFileWriter,
    module GI.Arrow.Objects.RecordBatchReader,
    module GI.Arrow.Objects.RecordBatchStreamReader,
    module GI.Arrow.Objects.RecordBatchStreamWriter,
    module GI.Arrow.Objects.RecordBatchWriter,
    module GI.Arrow.Objects.ResizableBuffer ,
    module GI.Arrow.Objects.Schema          ,
    module GI.Arrow.Objects.SeekableInputStream,
    module GI.Arrow.Objects.StringArray     ,
    module GI.Arrow.Objects.StringArrayBuilder,
    module GI.Arrow.Objects.StringDataType  ,
    module GI.Arrow.Objects.StructArray     ,
    module GI.Arrow.Objects.StructArrayBuilder,
    module GI.Arrow.Objects.StructDataType  ,
    module GI.Arrow.Objects.Table           ,
    module GI.Arrow.Objects.TableBatchReader,
    module GI.Arrow.Objects.Tensor          ,
    module GI.Arrow.Objects.Time32Array     ,
    module GI.Arrow.Objects.Time32ArrayBuilder,
    module GI.Arrow.Objects.Time32DataType  ,
    module GI.Arrow.Objects.Time64Array     ,
    module GI.Arrow.Objects.Time64ArrayBuilder,
    module GI.Arrow.Objects.Time64DataType  ,
    module GI.Arrow.Objects.TimeDataType    ,
    module GI.Arrow.Objects.TimestampArray  ,
    module GI.Arrow.Objects.TimestampArrayBuilder,
    module GI.Arrow.Objects.TimestampDataType,
    module GI.Arrow.Objects.UInt16Array     ,
    module GI.Arrow.Objects.UInt16ArrayBuilder,
    module GI.Arrow.Objects.UInt16DataType  ,
    module GI.Arrow.Objects.UInt32Array     ,
    module GI.Arrow.Objects.UInt32ArrayBuilder,
    module GI.Arrow.Objects.UInt32DataType  ,
    module GI.Arrow.Objects.UInt64Array     ,
    module GI.Arrow.Objects.UInt64ArrayBuilder,
    module GI.Arrow.Objects.UInt64DataType  ,
    module GI.Arrow.Objects.UInt8Array      ,
    module GI.Arrow.Objects.UInt8ArrayBuilder,
    module GI.Arrow.Objects.UInt8DataType   ,
    module GI.Arrow.Objects.UIntArrayBuilder,


    ) where

import GI.Arrow.Objects.Array
import GI.Arrow.Objects.ArrayBuilder
import GI.Arrow.Objects.BinaryArray
import GI.Arrow.Objects.BinaryArrayBuilder
import GI.Arrow.Objects.BinaryDataType
import GI.Arrow.Objects.BooleanArray
import GI.Arrow.Objects.BooleanArrayBuilder
import GI.Arrow.Objects.BooleanDataType
import GI.Arrow.Objects.Buffer
import GI.Arrow.Objects.BufferInputStream
import GI.Arrow.Objects.BufferOutputStream
import GI.Arrow.Objects.CastOptions
import GI.Arrow.Objects.ChunkedArray
import GI.Arrow.Objects.Column
import GI.Arrow.Objects.DataType
import GI.Arrow.Objects.Date32Array
import GI.Arrow.Objects.Date32ArrayBuilder
import GI.Arrow.Objects.Date32DataType
import GI.Arrow.Objects.Date64Array
import GI.Arrow.Objects.Date64ArrayBuilder
import GI.Arrow.Objects.Date64DataType
import GI.Arrow.Objects.Decimal128
import GI.Arrow.Objects.DictionaryArray
import GI.Arrow.Objects.DictionaryDataType
import GI.Arrow.Objects.DoubleArray
import GI.Arrow.Objects.DoubleArrayBuilder
import GI.Arrow.Objects.DoubleDataType
import GI.Arrow.Objects.FeatherFileReader
import GI.Arrow.Objects.FeatherFileWriter
import GI.Arrow.Objects.Field
import GI.Arrow.Objects.FileOutputStream
import GI.Arrow.Objects.FixedWidthDataType
import GI.Arrow.Objects.FloatArray
import GI.Arrow.Objects.FloatArrayBuilder
import GI.Arrow.Objects.FloatDataType
import GI.Arrow.Objects.FloatingPointDataType
import GI.Arrow.Objects.GIOInputStream
import GI.Arrow.Objects.GIOOutputStream
import GI.Arrow.Objects.InputStream
import GI.Arrow.Objects.Int16Array
import GI.Arrow.Objects.Int16ArrayBuilder
import GI.Arrow.Objects.Int16DataType
import GI.Arrow.Objects.Int32Array
import GI.Arrow.Objects.Int32ArrayBuilder
import GI.Arrow.Objects.Int32DataType
import GI.Arrow.Objects.Int64Array
import GI.Arrow.Objects.Int64ArrayBuilder
import GI.Arrow.Objects.Int64DataType
import GI.Arrow.Objects.Int8Array
import GI.Arrow.Objects.Int8ArrayBuilder
import GI.Arrow.Objects.Int8DataType
import GI.Arrow.Objects.IntArrayBuilder
import GI.Arrow.Objects.IntegerDataType
import GI.Arrow.Objects.ListArray
import GI.Arrow.Objects.ListArrayBuilder
import GI.Arrow.Objects.ListDataType
import GI.Arrow.Objects.MemoryMappedInputStream
import GI.Arrow.Objects.MutableBuffer
import GI.Arrow.Objects.NullArray
import GI.Arrow.Objects.NullDataType
import GI.Arrow.Objects.NumericArray
import GI.Arrow.Objects.NumericDataType
import GI.Arrow.Objects.OutputStream
import GI.Arrow.Objects.PoolBuffer
import GI.Arrow.Objects.PrimitiveArray
import GI.Arrow.Objects.RecordBatch
import GI.Arrow.Objects.RecordBatchBuilder
import GI.Arrow.Objects.RecordBatchFileReader
import GI.Arrow.Objects.RecordBatchFileWriter
import GI.Arrow.Objects.RecordBatchReader
import GI.Arrow.Objects.RecordBatchStreamReader
import GI.Arrow.Objects.RecordBatchStreamWriter
import GI.Arrow.Objects.RecordBatchWriter
import GI.Arrow.Objects.ResizableBuffer
import GI.Arrow.Objects.Schema
import GI.Arrow.Objects.SeekableInputStream
import GI.Arrow.Objects.StringArray
import GI.Arrow.Objects.StringArrayBuilder
import GI.Arrow.Objects.StringDataType
import GI.Arrow.Objects.StructArray
import GI.Arrow.Objects.StructArrayBuilder
import GI.Arrow.Objects.StructDataType
import GI.Arrow.Objects.Table
import GI.Arrow.Objects.TableBatchReader
import GI.Arrow.Objects.Tensor
import GI.Arrow.Objects.Time32Array
import GI.Arrow.Objects.Time32ArrayBuilder
import GI.Arrow.Objects.Time32DataType
import GI.Arrow.Objects.Time64Array
import GI.Arrow.Objects.Time64ArrayBuilder
import GI.Arrow.Objects.Time64DataType
import GI.Arrow.Objects.TimeDataType
import GI.Arrow.Objects.TimestampArray
import GI.Arrow.Objects.TimestampArrayBuilder
import GI.Arrow.Objects.TimestampDataType
import GI.Arrow.Objects.UInt16Array
import GI.Arrow.Objects.UInt16ArrayBuilder
import GI.Arrow.Objects.UInt16DataType
import GI.Arrow.Objects.UInt32Array
import GI.Arrow.Objects.UInt32ArrayBuilder
import GI.Arrow.Objects.UInt32DataType
import GI.Arrow.Objects.UInt64Array
import GI.Arrow.Objects.UInt64ArrayBuilder
import GI.Arrow.Objects.UInt64DataType
import GI.Arrow.Objects.UInt8Array
import GI.Arrow.Objects.UInt8ArrayBuilder
import GI.Arrow.Objects.UInt8DataType
import GI.Arrow.Objects.UIntArrayBuilder

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



