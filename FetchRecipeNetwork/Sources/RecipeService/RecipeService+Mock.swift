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
    let environment: AppEnvironment

    func fetchDesserts() -> NetworkResult<[Meal]> {
        .success(Meal.Mock.allMeals)
    }

    func fetchMealDetails(meal: Meal) -> NetworkResult<MealInfo> {
        if meal == Meal.Mock.tiramisu {
            .success(MealInfo.Mock.tiramisuInfo)
        } else {
            .failure(.notImplemented)
        }
    }
}
