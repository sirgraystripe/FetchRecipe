//
//  RecipeService+Mock.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeDomain
import Foundation

struct RecipeServiceMock: RecipeService {
    func fetchDesserts() -> NetworkResult<[Meal]> {
        .failure(.notImplemented)
    }

    func fetchMealDetails(meal _: Meal) -> NetworkResult<MealInfo> {
        .failure(.notImplemented)
    }

    var environment: AppEnvironment
}
