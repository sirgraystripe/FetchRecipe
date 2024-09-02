//
//  Endpoint.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import Foundation

struct Endpoint {
    var environment: AppEnvironment

    private var base: URL {
        switch environment {
        case .prod:
            URL(string: "https://themealdb.com/api/json/v1/1")!
        case .mock:
            fatalError("no mock endpoint")
        }
    }

    // MARK: Endpoints

    func getDesserts() -> URL {
        base
            .appending(components: "filter.php")
            .appending(queryItems: [.init(name: "c", value: "Dessert")])
    }

    func getMealDetails(mealID: String) -> URL {
        base
            .appending(components: "lookup.php")
            .appending(queryItems: [.init(name: "i", value: mealID)])
    }
}
