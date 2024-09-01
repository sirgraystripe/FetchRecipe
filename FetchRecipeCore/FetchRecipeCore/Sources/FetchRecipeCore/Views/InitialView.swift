//
//  InitialView.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import SwiftUI

public struct InitialView: View {
    @Environment(Store.self) private var store

    public init() {}

    public var body: some View {
        EmptyView()
    }
}

#Preview {
    InitialView()
}
