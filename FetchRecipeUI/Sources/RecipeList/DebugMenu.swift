//
//  SwiftUIView.swift
//  
//
//  Created by Peter Kos on 9/1/24.
//

import SwiftUI
import FetchRecipeCore
import FetchRecipeDomain

struct DebugMenu: View {
    @Environment(Store.self) private var store: Store
    @State private var selectedEnvironment: AppEnvironment = .mock

    var body: some View {
        List {
            Picker("Environment", selection: $selectedEnvironment) {
                ForEach(AppEnvironment.allCases) { environment in
                    Text(environment.rawValue)
                        .tag(environment)
                }
            }
        }
        .onChange(of: store.environment, initial: true) { _, environment in
            self.selectedEnvironment = environment
        }
        .onChange(of: selectedEnvironment) { _, environment in
            store.environment = selectedEnvironment
            // Re-fetch data when we change the environment via the menu
            Task {
                await store.fetchDesserts()
            }
        }
    }
}

#Preview {
    InitialView()
        .mockStore()
}
