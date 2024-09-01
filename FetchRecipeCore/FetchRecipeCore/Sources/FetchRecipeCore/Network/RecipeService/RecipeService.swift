//
//  RecipeService.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

protocol RecipeService: BaseService {
    func fetchDesserts() -> NetworkResult<[Dessert]>
    func fetchMealDetails(meal: Meal) -> NetworkResult<MealInfo>
}
