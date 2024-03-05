//
//  SilniaTest.swift
//  SilniaTest
//
//  Created by Влад on 3/5/24.
//

import XCTest

final class SilniaTest: XCTestCase {
    
    enum FactorialError: Error {
        case negativeNumber
        case invalidInput
    }

    func factorial(_ n: Int) -> Int {
        if n == 0 {
            return 1
        } else {
            return n * factorial(n - 1)
        }
    }




    override func setUpWithError() throws {
        
    }

    override func tearDownWithError() throws {
        
    }

    func testExample() throws {
        
    }

    
    func testFactorial() throws {
        
        XCTAssertEqual( factorial(0), 1, "Silnia z 0 powinna wynosić 1")
        
        
        XCTAssertEqual( factorial(1), 1, "Silnia z 1 powinna wynosić 1")
        
        
        XCTAssertEqual( factorial(5), 120, "Silnia z 5 powinna wynosić 120")
        
        
        XCTAssertEqual( factorial(10), 3628800, "Silnia z 10 powinna wynosić 3628800")
        
        
        
        
        
        
    }



}
