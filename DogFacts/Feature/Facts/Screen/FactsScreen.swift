//
//  FactsScreen.swift
//  DogFacts
//
//  Created by Diego Sierraalta on 2021-10-13.
//

import SwiftUI

struct FactsScreen: View {
    
    var body: some View {
        List {
            ForEach(Fact.dummyData, id: \.fact) { item in

            }
        }
    }
    
    

}

struct FactsScreen_Previews: PreviewProvider {
    static var previews: some View {
        FactsScreen()
    }
}
