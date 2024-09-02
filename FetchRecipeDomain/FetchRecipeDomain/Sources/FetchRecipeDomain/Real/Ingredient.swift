//
//  Ingredient.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

public struct Ingredient: Identifiable {
    public var id: String {
        // A crude implementation of Hashable. Hash-unable, some may say.
        name + (measurement?.description ?? "")
    }

    public var name: String
    public var measurement: Measurement<Unit>?

    init?(name: String?, measurement: Measurement<Unit>?) {
        guard let name, let measurement else {
            return nil
        }
        self.name = name
        self.measurement = measurement
    }
}
