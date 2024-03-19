import Foundation
import XCTest

// Function to calculate decreasing installments
func calculateDecreasingInstallments(amount: Double, interestRate: Double, periods: Int) -> [Double]? {
    // Validate input parameters
    guard amount > 0, interestRate >= 0, periods > 0 else {
        // If any parameter is invalid, return nil indicating failure
        return nil
    }
    
    // Calculate the principal part of each installment
    let principalPart = amount / Double(periods)
    var installments: [Double] = []
    
    // Iterate through each period to calculate installment
    for period in 1...periods {
        // Calculate remaining amount after previous installments
        let remainingAmount = amount - Double(period - 1) * principalPart
        // Calculate interest for the current period
        let interest = (remainingAmount * interestRate / 100) / 12
        // Total installment is sum of principal part and interest
        let installment = principalPart + interest
        installments.append(round(installment * 100) / 100)
    }
    
    return installments // Return the array of installments
}

import XCTest

class DecreasingInstallmentsTests: XCTestCase {
    
    // Test case for the function
    func testExample1() {
        let amount = 1200.0
        let interestRate = 12.0
        let periods = 12
        let expected: [Double] = [112.0, 111.0, 110.0, 109.0, 108.0, 107.0, 106.0, 105.0, 104.0, 103.0, 102.0, 101.0] // Expected installment values
        
        // Calculate installments using the function
        if let result = calculateDecreasingInstallments(amount: amount, interestRate: interestRate, periods: periods) {
            // Check if calculated installments match the expected values
            XCTAssertEqual(result, expected)
        } else {
            // Fail the test if input parameters are invalid
            XCTFail("Invalid input parameters")
        }
    }
    
    
}
