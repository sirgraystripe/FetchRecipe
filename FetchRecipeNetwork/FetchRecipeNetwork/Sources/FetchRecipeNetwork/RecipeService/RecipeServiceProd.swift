//
//  RecipeServiceProd.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeDomain
import Foundation

struct RecipeServiceProd: RecipeService {
    var environment: AppEnvironment

    func fetchDesserts() async -> NetworkResult<[Meal]> {
        let mealsDTO: MealsDTO
        switch await AppNetwork<MealsDTO>.get(url: endpoint.getDesserts()) {
        case let .failure(error):
            return .failure(error)
        case let .success(dtos):
            mealsDTO = dtos
        }

        var meals = [Meal]()
        for dto in mealsDTO.meals {
            switch Meal.convert(from: dto) {
            case let .success(meal): meals.append(meal)
            case let .failure(error): return .failure(.dataError(error))
            }
        }
        return .success(meals)
    }

    func fetchMealDetails(meal _: Meal) -> NetworkResult<MealInfo> {
        .failure(.notImplemented)
    }
}
