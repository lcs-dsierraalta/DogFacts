//
//  FactsScreen.swift
//  DogFacts
//
//  Created by Diego Sierraalta on 2021-10-13.
//

import SwiftUI

struct FactsScreen: View {
    
    @StateObject private var viewModel = FactsViewModelImpl(service: FactsServiceImpl())
    
    var body: some View {
        
        VStack {
            
            Text("Dog Facts 🐶")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            List {
                ForEach(viewModel.facts, id: \.fact) { item in
                    FactView(item: item)
                }
            }
            .task {
                await viewModel.getRandomFact()
            }
        }
    }
}

struct FactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        FactsScreen()
    }
}
