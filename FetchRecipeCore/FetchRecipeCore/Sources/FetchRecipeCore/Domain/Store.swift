//
//  Store.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import SwiftUI

@Observable
public final class Store {
    public var environment: AppEnvironment

    public init(environment: AppEnvironment) {
        self.environment = environment
    }
}

extension View {
    /// To use with Previews
    func mockStore() -> some View {
        environment(Store(environment: .mock))
    }
}
