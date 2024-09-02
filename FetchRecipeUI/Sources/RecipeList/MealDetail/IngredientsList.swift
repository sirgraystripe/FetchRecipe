//
//  IngredientsList.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeDomain
import SwiftUI

struct IngredientsList: View {
    var ingredients: [Ingredient]
    var body: some View {
        ForEach(ingredients) { ingredient in
            HStack {
                Text(ingredient.name)
                    .bold()
                Spacer()
                if let measurement = ingredient.measurement {
                    Text("\(measurement.value.formatted()) \(measurement.unit.symbol)")
                }
            }
        }
    }
}
