import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
           HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }

            Text("Salvati")
                .tabItem {
                    Image(systemName: "heart")
                    Text("Salvati")
                }

            Text("Vendi")
                .tabItem {
                    Image(systemName: "plus.circle")
                    Text("Vendi")
                }

            Text("Messaggi")
                .tabItem {
                    Image(systemName: "message")
                    Text("Messaggi")
                }

            Text("Area riservata")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Area riservata")
                }
        }
        .tint(Color.blue)
    }
}

#Preview {
    ContentView()
}
