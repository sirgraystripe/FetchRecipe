//
//  Meal.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import Foundation

public struct Meal: Identifiable, Equatable {
    public var id: String
    public var name: String
    /// Optional for mocking case where we can use a placeholder
    public var thumbnailURL: URL?

    public static func convert(from dto: MealDTO) -> DataResult<Meal> {
        guard let thumbnailURL = URL(string: dto.strMealThumb) else {
            return .failure(.invalidURLFormat("MealDTO"))
        }

        return .success(Meal(
            id: dto.idMeal,
            name: dto.strMeal,
            thumbnailURL: thumbnailURL
        ))
    }
}
