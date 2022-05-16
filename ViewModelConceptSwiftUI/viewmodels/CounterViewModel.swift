//
//  CounterViewModel.swift
//  ViewModelConceptSwiftUI
//
//  Created by Hafizh Mo on 16/05/22.
//

import Foundation

final class CounterViewModel: ObservableObject {
    @Published private(set) var value: Int = 0
    
    func increase() {
        value += 1
    }
    
    func decrease() {
        value -= 2
    }
}
