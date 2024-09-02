//
//  Meal.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import Foundation

public struct Meal: Identifiable {
    public var id = UUID()
    public var name: String
    /// Optional for mocking case where we can use a placeholder
    public var thumbnailURL: URL?

    public static func convert(from dto: MealDTO) -> DataResult<Meal> {
        guard let id = UUID(uuidString: dto.idMeal) else {
            return .failure(.invalidUUIDFormat("MealDTO"))
        }

        guard let thumbnailURL = URL(string: dto.strMealThumb) else {
            return .failure(.invalidURLFormat("MealDTO"))
        }

        return .success(Meal(
            id: id,
            name: dto.strMeal,
            thumbnailURL: thumbnailURL
        ))
    }
}
