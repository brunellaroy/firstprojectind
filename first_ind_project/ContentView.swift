//
//  ContentView.swift
//  first_ind_project
//
//  Created by Brunella Roy Chowdhury on 11/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            Text("Home")
                .tabItem {
                    Image(systemName: "house.fill")
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
    }
    }
#Preview {
    ContentView()
}
