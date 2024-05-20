import SwiftUI
import FoodTruckKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            DonutView(donut: .blackRaspberry)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
