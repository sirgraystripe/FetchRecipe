//
//  AppLogger.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation
import OSLog

public class AppLogger {
    private enum Subsystem: String, CustomStringConvertible {
        case networking
        case ui

        var description: String {
            "me.peterkos.FetchRecipe.subsystem.\(rawValue.capitalized)"
        }
    }

    /// Log a request to the Network subsystem.
    /// ```swift
    /// let value = "something"
    /// AppLogger.Network.log(level: .info, "\(value)")
    /// ```
    public static var Network: Logger {
        Logger(subsystem: Subsystem.networking.description, category: "")
    }

    public static var UI: Logger {
        Logger(subsystem: Subsystem.ui.description, category: "")
    }
}
