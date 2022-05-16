//
//  ViewModelConceptSwiftUIApp.swift
//  ViewModelConceptSwiftUI
//
//  Created by Hafizh Mo on 16/05/22.
//

import SwiftUI

@main
struct ViewModelConceptSwiftUIApp: App {
    @StateObject private var viewModel = CounterViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                ContentDetailView()
                    .tabItem {
                        Label("Settings", systemImage: "gearshape")
                    }
            }
            .accentColor(.teal)
            .environmentObject(viewModel)
        }
    }
}
