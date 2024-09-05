//
//  RecipeService+Mock.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeDomain
import Foundation

public struct RecipeServiceMock: RecipeService {
    public let environment: AppEnvironment

    public init(environment: AppEnvironment) {
        self.environment = environment
    }

    public func fetchDesserts() -> NetworkResult<[Meal]> {
        .success(Meal.Mock.allMeals)
    }

    public func fetchMealDetails(meal: Meal) -> NetworkResult<MealInfo> {
        if meal == Meal.Mock.tiramisu {
            .success(MealInfo.Mock.tiramisuInfo)
        } else {
            .failure(.notImplemented)
        }
    }
}
