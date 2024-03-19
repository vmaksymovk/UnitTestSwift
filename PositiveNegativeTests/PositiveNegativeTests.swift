import Foundation
import XCTest


func calculateDecreasingInstallments(amount: Double, interestRate: Double, periods: Int) -> [Double]? {
    
    guard amount > 0, interestRate >= 0, periods > 0 else {
        
        return nil
    }
    
    
    let principalPart = amount / Double(periods)
    var installments: [Double] = []
    
    
    for period in 1...periods {
        
        let remainingAmount = amount - Double(period - 1) * principalPart
        
        let interest = (remainingAmount * interestRate / 100) / 12
        
        let installment = principalPart + interest
        installments.append(round(installment * 100) / 100)
    }
    
    return installments
}

class DecreasingInstallmentsTests: XCTestCase {
    
    
    func testPositiveExample() {
        let amount = 1200.0
        let interestRate = 12.0
        let periods = 12
        let expected: [Double] = [112.0, 111.0, 110.0, 109.0, 108.0, 107.0, 106.0, 105.0, 104.0, 103.0, 102.0, 101.0]
        
        
        if let result = calculateDecreasingInstallments(amount: amount, interestRate: interestRate, periods: periods) {
            
            XCTAssertEqual(result, expected)
        } else {
            
            XCTFail("Invalid input parameters")
        }
    }
    
    
    func testNegativeExample() {
        let amount = -1200.0
        let interestRate = 12.0
        let periods = 12
        
        
        let result = calculateDecreasingInstallments(amount: amount, interestRate: interestRate, periods: periods)
        
        
        XCTAssertNil(result)
    }
}
