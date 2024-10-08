//
//  MealCell.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeDomain
import Kingfisher
import SwiftUI

struct MealCell: View {
    var meal: Meal

    var body: some View {
        HStack {
            KFImage(meal.thumbnailURL)
                .placeholder { _ in
                    Color.gray
                }
                .aspectRatio(1 / 1, contentMode: .fill)
                .frame(maxWidth: 40, maxHeight: 40)
                .clipShape(.rect(cornerRadius: 4))

            Text(meal.name)
                .bold()
        }
    }
}

#Preview {
    MealList(meals: Meal.Mock.allMeals)
        .mockStore()
}
