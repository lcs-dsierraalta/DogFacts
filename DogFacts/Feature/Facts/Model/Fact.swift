//
//  Fact.swift
//  DogFacts
//
//  Created by Diego Sierraalta on 2021-10-13.
//

import Foundation

struct Fact: Decodable {
    let fact: String
}

extension Fact {
    
    static let dummyData: [Fact] = [
        Fact(fact: "Dogs are awesome"),
        Fact(fact: "Dogs are cute"),
        Fact(fact: "Dogs are smart"),
        Fact(fact: "People who don't like dogs are inferior to people that like dogs"),
        Fact(fact: "Dogs are better than cats")
    ]
}
