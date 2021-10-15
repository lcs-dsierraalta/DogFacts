//
//  FactsViewModel.swift
//  DogFacts
//
//  Created by Diego Sierraalta on 2021-10-14.
//

import Foundation

protocol FactsViewModel: ObservableObject {
    func getRandomFact() async
}

@MainActor
final class FactsViewModelImpl: FactsViewModel {
    @Published private(set) var facts: [Fact] = []
    
    private let service: FactsService
    
    init(service: FactsService) {
        self.service = service
    }
    
    func getRandomFact() async {
        do {
            self.facts = try await service.fetchRandomFacts()
        } catch {
            print(error)
        }
    }
}
