//
//  RecipeService.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeDomain
import Foundation

public protocol RecipeService: BaseService {
    func fetchDesserts() -> NetworkResult<[Meal]>
    func fetchMealDetails(meal: Meal) -> NetworkResult<MealInfo>
}
