//
//  CalculatorAppTests.swift
//  CalculatorAppTests
//
//  Created by Elizeu RS on 05/09/22.
//

import XCTest
@testable import CalculatorApp

class CalculatorAppTests: XCTestCase {
  
  private var calculator: Calculator!
  
  // any code in setup() will be executed before the tests run.
  override func setUp() {
    super.setUp()
    
    self.calculator = Calculator()
  }
  
  func test_SubtractTwoNumbers() {
    
    let result = self.calculator.subtract(5,2)
    XCTAssertEqual(result, 3)
    
  }
  
  func test_AddTwoNumbers() {
    
    let result = self.calculator.add(2,3)
    XCTAssertEqual(result, 5)
    
    // failed test
//    XCTAssertEqual(result, 9)

  }
  
  // it runs after each test
  override class func tearDown() {
    super.tearDown()
  }
}
