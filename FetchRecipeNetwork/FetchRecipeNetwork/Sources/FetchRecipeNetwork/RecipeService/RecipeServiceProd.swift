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

    func fetchMealDetails(meal: Meal) async -> NetworkResult<MealInfo> {
        let mealInfoDTO: MealInfoDTO
        switch await AppNetwork<MealInfoDTO>.get(url: endpoint.getMealDetails(mealID: meal.id)) {
        case let .failure(error):
            return .failure(error)
        case let .success(dto):
            mealInfoDTO = dto
        }

        switch MealInfo.convert(from: mealInfoDTO) {
        case let .success(mealInfo): return .success(mealInfo)
        case let .failure(error): return .failure(.dataError(error))
        }
    }
}
