//
//  MealInfo.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import Foundation
import RegexBuilder

public struct MealInfo {
    public var id: String = UUID().uuidString
    public var name: String
    public var dateModified: Date?
    public var area: String
    // TODO: What kinds are there? Make enum!
    public var category: String

    public var ingredients: [Ingredient]
    /// Optional for mocking case where we can use a placeholder
    public var thumbnailURL: URL?

    static func convert(from dto: MealInfoDTO) -> DataResult<MealInfo> {
        guard let thumbnailURL = URL(string: dto.strMealThumb) else {
            return .failure(.invalidURLFormat("MealInfoDTO"))
        }

        let ingredients: [Ingredient]
        switch convertIngredients(dto) {
        case let .success(converted): ingredients = converted
        case let .failure(error): return .failure(error)
        }

        return .success(
            MealInfo(
                id: dto.idMeal,
                name: dto.idMeal,
                area: dto.strArea,
                category: dto.strCategory,
                ingredients: ingredients,
                thumbnailURL: thumbnailURL
            )
        )
    }

    // TODO: Unit test the crap outta this
    private static func convertIngredients(_ dto: MealInfoDTO) -> DataResult<[Ingredient]> {
        let pairs = [
            (dto.strIngredient1, dto.strMeasure1),
            (dto.strIngredient2, dto.strMeasure2),
            (dto.strIngredient3, dto.strMeasure3),
            (dto.strIngredient4, dto.strMeasure4),
            (dto.strIngredient5, dto.strMeasure5),
            (dto.strIngredient6, dto.strMeasure6),
            (dto.strIngredient7, dto.strMeasure7),
            (dto.strIngredient8, dto.strMeasure8),
            (dto.strIngredient9, dto.strMeasure9),
            (dto.strIngredient10, dto.strMeasure10),
            (dto.strIngredient11, dto.strMeasure11),
            (dto.strIngredient12, dto.strMeasure12),
            (dto.strIngredient13, dto.strMeasure13),
            (dto.strIngredient14, dto.strMeasure14),
            (dto.strIngredient15, dto.strMeasure15),
            (dto.strIngredient16, dto.strMeasure16),
            (dto.strIngredient17, dto.strMeasure17),
            (dto.strIngredient18, dto.strMeasure18),
            (dto.strIngredient19, dto.strMeasure19),
            (dto.strIngredient20, dto.strMeasure20),
        ]

        var ingredients = [Ingredient]()
        for (ingredientString, measurementString) in pairs {
            guard let chunked = chunk(measurementString) else {
                return .failure(.invalidIngredientMeasurement("\(ingredientString): \(measurementString)"))
            }

            let measurement = Measurement(
                value: chunked.0,
                unit: chunked.1
            )
            if let ingredient = Ingredient(
                name: dto.strIngredient1,
                measurement: measurement
            ) {
                ingredients.append(ingredient)
            }
        }
        return .success(ingredients)
    }

    // TODO: Unit test the crap outta this
    /// Separates a string like `600ml`, `4g`, `20`.
    /// Note that no unit is a valid case (as quantity needs no inherent unit).
    private static func chunk(_ measurement: String) -> (Double, Unit)? {
        let regex = Regex {
            Capture {
                OneOrMore {
                    .digit
                }
            }
            Capture {
                ZeroOrMore {
                    .word
                }
            }
        }

        if let match = measurement.firstMatch(of: regex) {
            let (_, value, unit) = match.output
            return (value, unit) as? (Double, Unit)
        } else {
            return nil
        }
    }
}
