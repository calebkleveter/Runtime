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

import Foundation

extension UnsafePointer {
    
    public var raw: UnsafeRawPointer {
        return UnsafeRawPointer(self)
    }
    
    public var mutable: UnsafeMutablePointer<Pointee> {
        return UnsafeMutablePointer<Pointee>(mutating: self)
    }
    
    public func buffer(n: Int) -> UnsafeBufferPointer<Pointee> {
        return UnsafeBufferPointer(start: self, count: n)
    }
}

extension UnsafePointer where Pointee: Equatable {
    public func advance(to value: Pointee) -> UnsafePointer<Pointee> {
        var pointer = self
        while pointer.pointee != value {
            pointer = pointer.advanced(by: 1)
        }
        return pointer
    }
}

extension UnsafeMutablePointer {
    
    public var raw: UnsafeMutableRawPointer {
        return UnsafeMutableRawPointer(self)
    }
    
    public func buffer(n: Int) -> UnsafeMutableBufferPointer<Pointee> {
        return UnsafeMutableBufferPointer(start: self, count: n)
    }
    
    public func advanced(by n: Int, wordSize: Int) -> UnsafeMutableRawPointer {
        return self.raw.advanced(by: n * wordSize)
    }
}
