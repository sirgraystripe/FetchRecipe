//
//  AppEnvironment.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

public enum AppEnvironment: String, CaseIterable, Sendable, Identifiable {
    case prod
    case mock

    public var id: String { self.rawValue }
}
