//
//  MealsDTO.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

struct MealsDTO: Codable {
    let meals: [MealDTO]
}

struct MealDTO: Codable, Equatable {
    let idMeal: String
    let strMeal: String
    let strMealThumb: String
}
