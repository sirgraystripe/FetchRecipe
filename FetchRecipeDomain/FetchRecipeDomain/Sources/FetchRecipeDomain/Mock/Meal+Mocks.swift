//
//  Meal+Mocks.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

public extension Meal {
    enum Mock {
        public static var tiramisu: Meal {
            Meal(name: "Tiramisu")
        }

        public static var parfait: Meal {
            Meal(name: "Parfair")
        }

        public static var chocolateCake: Meal {
            Meal(name: "Chocolate Cake")
        }

        public static var vanillaIceCream: Meal {
            Meal(name: "Vanilla Ice Cream")
        }

        public static var allMeals: [Meal] {
            [tiramisu, parfait, chocolateCake, vanillaIceCream]
        }
    }
}
