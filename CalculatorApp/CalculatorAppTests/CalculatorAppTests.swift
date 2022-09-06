//
//  CalculatorAppTests.swift
//  CalculatorAppTests
//
//  Created by Elizeu RS on 05/09/22.
//

import XCTest
@testable import CalculatorApp

class CalculatorAppTests: XCTestCase {
  
  func test_SubtractTwoNumbers() {
    
    let calculator = Calculator()
    let result = calculator.subtract(5,2)
    
    XCTAssertEqual(result, 3)
  }
  
  func test_AddTwoNumbers() {
    
    let calculator = Calculator()
    let result = calculator.add(2,3)
    
    XCTAssertEqual(result, 5)
    
    // failed test
//    XCTAssertEqual(result, 9)

  }
}
