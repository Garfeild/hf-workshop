import FoodTruckKit
import SwiftUI

@main
struct WorkshopApp: App {
    @StateObject private var foodTruckModel = FoodTruckModel()
    @StateObject private var cartModel = CartModel()

    var body: some Scene {
        WindowGroup {
            ContentView(foodTruckModel: foodTruckModel, cartModel: cartModel)
        }
    }
}
