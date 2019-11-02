// MIT License
//
// Copyright (c) 2017 Wesley Wickwire
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

public struct ValueWitnessTable {
    public var initializeBufferWithCopyOfBuffer: UnsafeRawPointer
    public var destroy: UnsafeRawPointer
    public var initializeWithCopy: UnsafeRawPointer
    public var assignWithCopy: UnsafeRawPointer
    public var initializeWithTake: UnsafeRawPointer
    public var assignWithTake: UnsafeRawPointer
    public var getEnumTagSinglePayload: UnsafeRawPointer
    public var storeEnumTagSinglePayload: UnsafeRawPointer
    public var size: Int
    public var stride: Int
    public var flags: Int
}

public struct ValueWitnessFlags {
    public static let alignmentMask = 0x0000FFFF
    public static let isNonPOD = 0x00010000
    public static let isNonInline = 0x00020000
    public static let hasExtraInhabitants = 0x00040000
    public static let hasSpareBits = 0x00080000
    public static let isNonBitwiseTakable = 0x00100000
    public static let hasEnumWitnesses = 0x00200000
}
