//
//  Foo.swift
//  Firebase
//
//  Created by Nick Cooke on 5/8/25.
//

import Foundation

// Approach one
@objc(FIRFoo) public class Foo: NSObject {
  @objc public func doStuff() {}
}


// Variant Two (probably preferred)
// This variant allows you to express the type in pure Swift, and then provide
// a simpler ObjC compatible version to be used by FirestoreInternal

// This type would probably be a struct rather than class in a Swift-only world.
public struct Int32Value {
  let value: Int32
}

@objc(FIRInt32Value)
@available(swift 1000.0) // Objective-C only API
public class FIRInt32Value: NSObject {
  private let swiftImpl: Int32Value
  
  init(int: Int32) {
    self.swiftImpl = .init(value: int)
  }
  
  var value: Int32 {
    swiftImpl.value
  }
}
