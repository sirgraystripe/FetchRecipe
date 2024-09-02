//
//  FetchRecipeApp.swift
//  FetchRecipe
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeUI
import SwiftUI

@main
struct FetchRecipeApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

public struct RootView: View {
    @State private var store = Store(environment: .mock)

    public init() {}

    public var body: some View {
        InitialView()
            .environment(store)
    }
}

#Preview {
    RootView()
}
