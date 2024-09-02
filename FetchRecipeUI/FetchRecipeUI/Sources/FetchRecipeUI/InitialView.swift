//
//  InitialView.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import SwiftUI

public struct InitialView: View {
    @Environment(Store.self) private var store

    public init() {}

    public var body: some View {
        RecipeList()
    }
}

#Preview {
    InitialView()
        .mockStore()
}
