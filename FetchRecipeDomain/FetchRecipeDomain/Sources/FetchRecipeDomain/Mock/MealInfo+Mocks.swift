//
//  MealInfo+Mocks.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

extension MealInfo: Mockable {
    public enum Mock {
        static var tiramisuInfo: MealInfo {
            MealInfo(
                name: "Tiramisu",
                area: "Area thing",
                category: "Dessert",
                ingredients: [
                    .Mock.marscapone_12g,
                    .Mock.eggs_2,
                    .Mock.sugar_20g,
                ]
            )
        }
    }
}
