//
//  MealInfo+Mocks.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

extension MealInfo: Mockable {
    public enum Mock {
        public static var tiramisuInfo: MealInfo {
            MealInfo(
                name: "Tiramisu",
                area: "Area thing",
                category: "Dessert",
                ingredients: [
                    .Mock.marscapone_12g,
                    .Mock.eggs_2,
                    .Mock.sugar_20g,
                ],
                instructions:
                """
                Mix milk, oil and egg together. \
                Sift flour, baking powder and salt into the mixture. \
                Stir well until all ingredients are combined evenly.\r\n\r\nSpread some batter onto the pan. \
                Spread a thin layer of batter to the side of the pan. Cover the pan for 30-60 seconds until small \
                air bubbles appear.\r\n\r\nAdd butter, cream corn, crushed peanuts and sugar onto the pancake. \
                Fold the pancake into half once the bottom surface is browned.\r\n\r\nCut into wedges \
                and best eaten when it is warm.
                """
            )
        }
    }
}
