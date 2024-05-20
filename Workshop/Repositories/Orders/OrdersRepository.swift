import Combine
import FoodTruckKit
import Foundation

final class OrdersRepository {
    
    let remoteDataSource = OrdersDataSource()

    /**
     Task: Implement this function to use `remoteDataSource` to execute request
     of placing order
     */
    func placeOrder(_ order: [Donut.ID: UInt]) async throws {
        fatalError("To implement")
    }

    /**
     Task: Implement function to use `remoteDataSource` to fetch data about
     all active orders. This function should return publisher, which emits
     value once and ends after that.
     */
    func fetchActiveOrders() async throws -> AnyPublisher<[Order], Error> {
        fatalError("To implement")
    }

    /**
     Task: Implement function to use `remoteDataSource` to fetch data about
     all historical orders. This function uses completion block to return
     value wrapped in `Result<[Order], Error>`.
     */
    func getHistoricalOrders(
        _ completionQueue: DispatchQueue = .main,
        completionBlock: Result<[Order], Error>
    ) {
        fatalError("To implement")
    }

}
