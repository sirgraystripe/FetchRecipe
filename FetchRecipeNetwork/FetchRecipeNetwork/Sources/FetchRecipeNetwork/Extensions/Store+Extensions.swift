//
//  Store+Extensions.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import Foundation

extension Store {
    var recipeService: RecipeService {
        switch environment {
        case .prod: fatalError("RecipeService not implemented for prod")
        case .mock: fatalError("RecipeService not implemented for mock")
        }
    }
}
