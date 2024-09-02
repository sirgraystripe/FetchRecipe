//
//  RecipeList.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeDomain
import FetchRecipeNetwork
import SwiftUI

struct RecipeList: View {
    @Environment(Store.self) private var store

    @State var meals = [Meal]()

    var body: some View {
        List {
            ForEach(meals) { meal in
                MealCell(meal: meal)
            }
        }
        .task {
            switch await store.recipeService.fetchDesserts() {
            case let .success(meals):
                self.meals = meals
                AppLogger.UI.debug("Fetched meals \(meals.map(\.name))")
            case let .failure(error):
                // TODO: Show to user with a nice toast
                AppLogger.UI.error("Failed to fetch meals: \(error.userFriendlyDescription)")
            }
        }
    }
}

#Preview {
    RecipeList(meals: Meal.Mock.allMeals)
        .mockStore()
}
