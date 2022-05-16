//
//  ContentView.swift
//  ViewModelConceptSwiftUI
//
//  Created by Hafizh Mo on 16/05/22.
//

import SwiftUI

struct Counter {
    var value: Int = 0
    
    mutating func increase() {
        value += 1
    }
    
    mutating func decrease() {
        value -= 2
    }
}

struct ContentView: View {
    @State private var counter = Counter()
    
    var body: some View {
        VStack {
            Text("\(counter.value)")
                .bold()
                .padding()
                .font(.largeTitle)
            HStack {
                Button("Increase 1") {
                    counter.increase()
                }
                .tint(.teal)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                Button("Decrease 2") {
                    counter.decrease()
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
    }
}
