//
//  MealInfo.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

struct MealInfo {
    var id: UUID
    var dateModified: Date?
    var area: String
    // TODO: What kinds are there? Make enum!
    var category: String

    var ingredients: [Ingredient<Unit>]
    var name: String
    var thumbnailURL: URL

    
}
