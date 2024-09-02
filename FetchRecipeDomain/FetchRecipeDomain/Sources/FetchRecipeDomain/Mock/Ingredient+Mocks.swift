//
//  Ingredient+Mocks.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

extension Ingredient: Mockable {
    public enum Mock {
        static var marscapone_12g: Ingredient {
            if let ingredient = Ingredient(
                name: "Marscapone",
                measurement: .init(
                    value: 12,
                    unit: .init(symbol: "g")
                )
            ) {
                ingredient
            } else {
                fatalError("Mock ingredient data invalid!")
            }
        }

        static var sugar_20g: Ingredient {
            if let ingredient = Ingredient(
                name: "Sugar",
                measurement: .init(
                    value: 20,
                    unit: .init(symbol: "g")
                )
            ) {
                ingredient
            } else {
                fatalError("Mock ingredient data invalid!")
            }
        }

        static var eggs_2: Ingredient {
            if let ingredient = Ingredient(
                name: "Eggs",
                measurement: .init(
                    value: 2,
                    unit: .init(symbol: "")
                )
            ) {
                ingredient
            } else {
                fatalError("Mock ingredient data invalid!")
            }
        }
    }
}
