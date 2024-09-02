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
    func fetchDesserts() async -> NetworkResult<[Meal]>
    func fetchMealDetails(meal: Meal) async -> NetworkResult<MealInfo>
}
