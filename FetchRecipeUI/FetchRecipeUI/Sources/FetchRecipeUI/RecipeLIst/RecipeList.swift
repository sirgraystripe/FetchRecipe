//
//  RecipeList.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeDomain
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
    }
}

#Preview {
    RecipeList(meals: Meal.Mock.allMeals)
        .mockStore()
}
