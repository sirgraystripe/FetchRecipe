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

    var userFriendlyDescription: String {
        switch self {
        case .notImplemented: "Not implemented"
        }
    }
}
