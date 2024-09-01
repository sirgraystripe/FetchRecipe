//
//  DataError.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

typealias DataResult<T> = Result<T, DataError>

enum DataError: LocalizedError {
    case invalidUUIDFormat(String)
    case invalidURLFormat(String)

    var reason: String {
        switch self {
        case let .invalidUUIDFormat(info): "Invalid UUID format for object \(info)"
        case let .invalidURLFormat(info): "Invalid URL format for object \(info)"
        }
    }
}
