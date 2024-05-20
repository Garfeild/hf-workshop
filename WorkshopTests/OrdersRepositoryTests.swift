@testable import Workshop
import XCTest

final class OrdersRepositoryTests: XCTestCase {
    var sut: OrdersRepository!

    override func setUp() {
        super.setUp()
        sut = OrdersRepository()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
}
