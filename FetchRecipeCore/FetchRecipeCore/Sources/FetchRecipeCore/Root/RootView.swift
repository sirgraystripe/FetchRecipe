//
//  RootView.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import SwiftUI

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
