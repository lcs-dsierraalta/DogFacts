//
//  FactView.swift
//  DogFacts
//
//  Created by Diego Sierraalta on 2021-10-14.
//

import SwiftUI

struct FactView: View {
    
    let item: Fact
    
    var body: some View {
        VStack(alignment: .leading,
               spacing: 8) {
            
            Text(makeAttributedString(label: item.fact))
        }
               .padding()
               .foregroundColor(.black)
    }
    
    private func makeAttributedString(label: String) -> AttributedString {
        
        var string = AttributedString("\(label)")
        string.foregroundColor = .black
        string.font = .system(size: 16)
        
        return string
    }
}

struct FactView_Previews: PreviewProvider {
    static var previews: some View {
        FactView(item: Fact.dummyData.first!)
    }
}
