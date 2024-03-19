
import XCTest

final class BruttoVatTest: XCTestCase {
    
    func countPriceBrutto(priceNetto: Double, amountVAT: Double) -> Double {
        let priceBrutto = priceNetto * (1 + amountVAT / 100)
        return priceBrutto
    }
    
    func testBruttoFor23Procent() {
        let priceNetto: Double = 100.0
        let amountVAT: Double = 23.0
        let priceBruttoExpected: Double = 123.0
        
        let finishPriceOFBrutto = countPriceBrutto(priceNetto: priceNetto, amountVAT: amountVAT)
        
        XCTAssertEqual(priceBruttoExpected, finishPriceOFBrutto, accuracy: 0.001, "Error during the conversion")
    }
    
    func testForCountPriceBruttoFor8Procent() {
        let priceNetto: Double = 200.0
        let amountVAT: Double = 8.0
        let priceBruttoExpected: Double = 216.0
        
        let finishPriceOFBrutto = countPriceBrutto(priceNetto: priceNetto, amountVAT: amountVAT)
        
        XCTAssertEqual(priceBruttoExpected, finishPriceOFBrutto, accuracy: 0.001, "Error during the conversion")
    }
    
    func testCountPriceBruttoFor0Procent() {
        let priceNetto: Double = 150.0
        let amountVAT: Double = 0.0
        let priceBruttoExpected: Double = 150.0
        
        let finishPriceOFBrutto = countPriceBrutto(priceNetto: priceNetto, amountVAT: amountVAT)
        
        XCTAssertEqual(priceBruttoExpected, finishPriceOFBrutto, accuracy: 0.001, "Error during the conversion")
    }
    
    
    func testCountPriceBruttoFor50Procent() {
        let priceNetto: Double = 50.0
        let amountVAT: Double = 50.0
        let priceBruttoExpected: Double = 75.0
        
        let finishPriceOFBrutto = countPriceBrutto(priceNetto: priceNetto, amountVAT: amountVAT)
        
        XCTAssertEqual(priceBruttoExpected, finishPriceOFBrutto, accuracy: 0.001, "Error during the conversion")
    }
    
    func testCountPriceBruttoForFractionProcent() {
        let priceNetto: Double = 100.0
        let amountVAT: Double = 10.5
        let priceBruttoExpected: Double = 110.5
        
        let finishPriceOFBrutto = countPriceBrutto(priceNetto: priceNetto, amountVAT: amountVAT)
        
        XCTAssertEqual(priceBruttoExpected, finishPriceOFBrutto, accuracy: 0.001, "Error during the conversion")
    }
}


