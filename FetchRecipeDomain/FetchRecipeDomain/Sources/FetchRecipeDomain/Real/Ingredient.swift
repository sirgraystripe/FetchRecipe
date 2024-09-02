//
//  Ingredient.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

struct Ingredient {
    var name: String
    var measurement: Measurement<Unit>?

    init?(name: String?, measurement: Measurement<Unit>?) {
        guard let name, let measurement else {
            return nil
        }
        self.name = name
        self.measurement = measurement
    }
}
