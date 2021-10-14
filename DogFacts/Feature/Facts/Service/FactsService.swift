//
//  FactsService.swift
//  DogFacts
//
//  Created by Diego Sierraalta on 2021-10-14.
//

import Foundation

protocol FactsService {
    func fetch() async throws -> [Fact]
}

final class FactsServiceImpl: FactsService {
    func fetch() async throws -> [Fact] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseUrl.appending("/api/facts"))
        let (data, _) = try await urlSession.data(from: url!)
        return try JSONDecoder().decode([Fact].self, from: data)
    }
}
