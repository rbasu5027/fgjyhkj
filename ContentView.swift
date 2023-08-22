import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Picture")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
    }
}
