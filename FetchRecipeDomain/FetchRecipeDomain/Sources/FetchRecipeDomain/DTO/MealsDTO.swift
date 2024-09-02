//
//  MealsDTO.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

public struct MealsDTO: Codable {
    public let meals: [MealDTO]
}

public struct MealDTO: Codable, Equatable {
    let idMeal: String
    let strMeal: String
    let strMealThumb: String
}
