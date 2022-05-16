//
//  ContentDetailView.swift
//  ViewModelConceptSwiftUI
//
//  Created by Hafizh Mo on 16/05/22.
//

import SwiftUI

struct ContentDetailView: View {
    @EnvironmentObject private var viewModel: CounterViewModel
    var body: some View {
        VStack {
            Text("Total value:")
            Text("\(viewModel.value)")
                .bold()
                .padding()
                .font(.largeTitle)
                .foregroundColor(.teal)
        }
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
