import SwiftUI
import FoodTruckKit
import Foundation

actor OrdersDataSource {
    var currentInvoiceNumber: Int = 24
    let orderGenerator = OrderGenerator()

    @Published
    var orders: [Order] = {
        let generator = OrderGenerator()
        return generator.todaysOrders()
    }()

    init() { /* Empty initializer */ }

    @discardableResult
    func placeOrder(_ sales: [Donut.ID: UInt]) async -> Order {
        currentInvoiceNumber += 1
        let donuts = Donut.all.filter { sales.keys.contains($0.id) }
        let order = orderGenerator.generateOrder(
            number: currentInvoiceNumber,
            date: Date(),
            donuts: donuts,
            sales: sales.mapValues { Int($0) }
        )
        orders.append(order)
        return order
    }

    func fetchActiveOrders() -> [Order] {
        orders
    }
}
