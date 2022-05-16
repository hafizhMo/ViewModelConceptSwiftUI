//
//  ContentView.swift
//  ViewModelConceptSwiftUI
//
//  Created by Hafizh Mo on 16/05/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var viewModel: CounterViewModel
    
    var body: some View {
        VStack {
            Text("\(viewModel.value)")
                .bold()
                .padding()
                .font(.largeTitle)
            HStack {
                Button("Increase 1") {
                    viewModel.increase()
                }
                .tint(.teal)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                Button("Decrease 2") {
                    viewModel.decrease()
                }
                .tint(.teal)
                .buttonStyle(.bordered)
                .controlSize(.large)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CounterViewModel())
    }
}
