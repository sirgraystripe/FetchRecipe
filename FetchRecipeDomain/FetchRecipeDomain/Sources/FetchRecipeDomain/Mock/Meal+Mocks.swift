//
//  Meal+Mocks.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

public extension Meal {
    enum Mock: CaseIterable {
        public static var tiramisu: Meal {
            Meal(id: "tiramisu", name: "Tiramisu")
        }

        public static var parfait: Meal {
            Meal(id: "parfait", name: "Parfait")
        }

        public static var chocolateCake: Meal {
            Meal(id: "chocolatecake", name: "Chocolate Cake")
        }

        public static var vanillaIceCream: Meal {
            Meal(id: "vanillaicecream", name: "Vanilla Ice Cream")
        }

        public static var allMeals: [Meal] {
            [tiramisu, parfait, chocolateCake, vanillaIceCream]
        }
    }
}
