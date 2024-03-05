
import XCTest
@testable import TestExample

public class TestExample {
    public static func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
}

final class UnitTestExample: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    func testAddition() throws {
        // Given
        let firstNumber = 3
        let secondNumber = 5
        
        // When
        let result = TestExample.add(firstNumber, secondNumber)
        
        // Then
        XCTAssertEqual(result, 8, "Addition of \(firstNumber) and \(secondNumber) should be 8")
    }

    

}

