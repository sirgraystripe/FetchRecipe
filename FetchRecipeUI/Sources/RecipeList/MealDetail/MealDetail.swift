//
//  MealDetail.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeDomain
import SwiftUI

struct MealDetail: View {
    @Environment(Store.self) private var store
    @State private var mealInfo: MealInfo?

    var meal: Meal

    var body: some View {
        VStack {
            List {
                Section("Properties") {
                    MealProperty(
                        title: "Category",
                        description: mealInfo?.category
                    )
                    MealProperty(
                        title: "Last Modified",
                        description: mealInfo?.dateModified?.formatted()
                    )
                }
                if let ingredients = mealInfo?.ingredients {
                    Section(ingredients.count == 1 ? "Ingredient" : "Ingredients") {
                        IngredientsList(ingredients: ingredients)
                    }
                }
            }
        }
        .navigationTitle(meal.name)
        .task {
            switch await store.recipeService.fetchMealDetails(meal: meal) {
            case let .success(mealInfo):
                self.mealInfo = mealInfo
            case let .failure(error):
                AppLogger.UI.error("Error fetching MealInfo for meal \(meal.name): \(error)")
            }
        }
    }
}

#Preview {
    NavigationStack {
        MealDetail(meal: .Mock.tiramisu)
    }
    .mockStore()
}
