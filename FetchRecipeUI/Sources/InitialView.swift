//
//  InitialView.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import FetchRecipeDomain
import SwiftUI

public struct InitialView: View {
    @Environment(Store.self) private var store
    @State private var presentDebugMenu = false

    public init() {}

    public var body: some View {
        NavigationStack {
            MealList(meals: store.meals)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            presentDebugMenu = true
                        } label: {
                            Image(systemName: "gear")
                        }
                    }
                }
                .sheet(isPresented: $presentDebugMenu) {
                    DebugMenu()
                        .presentationDetents([.fraction(1/2)])
                }
        }
    }
}


#Preview {
    InitialView()
        .mockStore()
}
