//
//  DataError.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

public typealias DataResult<T> = Result<T, DataError>

public enum DataError: LocalizedError {
    case invalidMealInfoFormat(String)
    case invalidURLFormat(String)
    case invalidIngredientMeasurement(String)

    var reason: String {
        switch self {
        case let .invalidMealInfoFormat(info): "Invalid meal info format: \(info)"
        case let .invalidURLFormat(info): "Invalid URL format for object \(info)"
        case let .invalidIngredientMeasurement(info): "Couldn't parse ingredient/measurement pair: \(info)"
        }
    }
}
