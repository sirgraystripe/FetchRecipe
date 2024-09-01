//
//  Store.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import SwiftUI

@Observable
final class Store {
    var environment: AppEnvironment

    init(environment: AppEnvironment) {
        self.environment = environment
    }
}

extension View {
    /// To use with Previews
    func mockStore() -> some View {
        environment(Store(environment: .mock))
    }
}

extension Store {
    var recipeService: RecipeService {
        switch environment {
        case .prod: fatalError("RecipeService not implemented for prod")
        case .mock: fatalError("RecipeService not implemented for mock")
        }
    }
}
