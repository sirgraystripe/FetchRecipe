//
//  MealInfoDTO.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

public struct MealInfoDTO: Codable {
    var meals: [MealInfoDataDTO]
}

public struct MealInfoDataDTO: Codable {
    // FIXME: Verify the type this returns, most hits are giving nil so not sure.
    let dateModified: String?
    let idMeal: String
    let strArea: String
    let strCategory: String
    // FIXME: Verify the type this returns, most hits are giving nil so not sure.
    let strCreativeCommonsConfirmed: String?
    // FIXME: Verify the type this returns, most hits are giving nil so not sure.
    let strDrinkAlternate: String?
    // FIXME: Verify the type this returns, most hits are giving nil so not sure.
    let strImageSource: String?
    let strSource: String

    let strInstructions: String
    let strMeal: String
    let strMealThumb: String

    // FIXME: Verify the type this returns, most hits are giving nil so not sure.
    let strTags: String?
    let strYoutube: String

    // MARK: Ingredients

    let strIngredient1: String
    let strIngredient2: String
    let strIngredient3: String
    let strIngredient4: String
    let strIngredient5: String
    let strIngredient6: String
    let strIngredient7: String
    let strIngredient8: String
    let strIngredient9: String
    let strIngredient10: String
    let strIngredient11: String
    let strIngredient12: String
    let strIngredient13: String
    let strIngredient14: String
    let strIngredient15: String
    let strIngredient16: String
    let strIngredient17: String
    let strIngredient18: String
    let strIngredient19: String
    let strIngredient20: String

    // MARK: Measure

    let strMeasure1: String
    let strMeasure2: String
    let strMeasure3: String
    let strMeasure4: String
    let strMeasure5: String
    let strMeasure6: String
    let strMeasure7: String
    let strMeasure8: String
    let strMeasure9: String
    let strMeasure10: String
    let strMeasure11: String
    let strMeasure12: String
    let strMeasure13: String
    let strMeasure14: String
    let strMeasure15: String
    let strMeasure16: String
    let strMeasure17: String
    let strMeasure18: String
    let strMeasure19: String
    let strMeasure20: String
}
