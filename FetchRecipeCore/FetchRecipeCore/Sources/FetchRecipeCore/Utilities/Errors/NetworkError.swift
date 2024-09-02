//
//  NetworkError.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

public typealias NetworkResult<T> = Result<T, NetworkError>

public enum NetworkError: LocalizedError {
    case notImplemented
    case transportError(String)
    case jsonError(String)
    case dataError(DataError)

    public var userFriendlyDescription: String {
        switch self {
        case .notImplemented: "Not implemented"
        case let .transportError(info): "Request failed: \(info)"
        case let .jsonError(info): "Data conversion error: \(info)"
        case let .dataError(dataError): dataError.reason
        }
    }
}
