//
//  NetworkError.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

typealias NetworkResult<T> = Result<T, NetworkError>

enum NetworkError: LocalizedError {
    case notImplemented

    var userFriendlyDescription: String {
        switch self {
        case .notImplemented: "Not implemented"
        }
    }
}
