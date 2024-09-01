//
//  RecipeService+Mock.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

struct RecipeServiceMock: RecipeService {
    func fetchDesserts() -> NetworkResult<[Dessert]> {
        .failure(.notImplemented)
    }

    func fetchMealDetails(meal _: Meal) -> MealInfo {}

    var environment: AppEnvironment
}
