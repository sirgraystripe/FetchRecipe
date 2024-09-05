//
//  MealList.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeDomain
import SwiftUI

struct MealList: View {
    @Environment(Store.self) private var store
    var meals: [Meal]

    private var sortedMeals: [Meal] {
        meals.sorted(by: { $0.name < $1.name })
    }

    var body: some View {
        List {
            ForEach(sortedMeals) { meal in
                NavigationLink {
                    MealDetail(meal: meal)
                } label: {
                    MealCell(meal: meal)
                }
            }
        }
        .task {
            await store.fetchDesserts()
        }
        .navigationTitle("Meals")
    }
}

#Preview {
    NavigationStack {
        MealList(meals: Meal.Mock.allMeals)
            .mockStore()
    }
}
