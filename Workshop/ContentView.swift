import SwiftUI
import FoodTruckKit

struct ContentView: View {
    var foodTruckModel: FoodTruckModel
    var cartModel: CartModel

    var body: some View {
        NavigationStack {
            DonutGallery(model: foodTruckModel, cartModel: cartModel)
        }
    }
}

#Preview {
    ContentView(foodTruckModel: FoodTruckModel(), cartModel: CartModel())
}
