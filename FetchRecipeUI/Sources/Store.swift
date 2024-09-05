//
//  Store.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import SwiftUI
import FetchRecipeCore
import FetchRecipeNetwork
import FetchRecipeDomain

@Observable
public final class Store {
    public var environment: AppEnvironment

    public var meals = [Meal]()

    public init(environment: AppEnvironment) {
        self.environment = environment
    }

    func fetchDesserts() async {
        switch await recipeService.fetchDesserts() {
        case let .success(meals):
            self.meals = meals
            AppLogger.UI.debug("Fetched meals \(meals.map(\.name))")
        case let .failure(error):
            // TODO: Show to user with a nice toast
            AppLogger.UI.error("Failed to fetch meals: \(error.userFriendlyDescription)")
        }
    }
}

public extension View {
    /// To use with Previews
    func mockStore() -> some View {
        environment(Store(environment: .mock))
    }
}

public extension Store {
    var recipeService: RecipeService {
        switch environment {
        case .prod: RecipeServiceProd(environment: .prod)
        case .mock: RecipeServiceMock(environment: .mock)
        }
    }
}
