import XCTest
@testable import CAiger

class CAigerTests: XCTestCase {
    func testInit() {
        XCTAssertNotNil(aiger_init())
    }


    static var allTests : [(String, (CAigerTests) -> () throws -> Void)] {
        return [
            ("testInit", testInit),
        ]
    }
}
