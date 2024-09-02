//
//  MealProperty.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import SwiftUI

struct MealProperty: View {
    var title: String
    var description: String?

    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Text(description ?? "?")
                .foregroundStyle(.secondary)
        }
    }
}
