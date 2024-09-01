//
//  Ingredient.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

struct Ingredient<MeasuredUnit: Unit> {
    var name: String
    var measurement: Measurement<MeasuredUnit>
}

extension Ingredient where MeasuredUnit == UnitMass {
    init(name: String, measurement: Measurement<MeasuredUnit>) {
        self.name = name
        self.measurement = measurement
    }
}

extension Ingredient where MeasuredUnit == UnitVolume {
    init(name: String, measurement: Measurement<MeasuredUnit>) {
        self.name = name
        self.measurement = measurement
    }
}
