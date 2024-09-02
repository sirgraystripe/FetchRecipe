//
//  ResponseCode.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

enum ResponseCode: Int {
    case ok = 200
    case notFound = 404

    var userFriendlyDescription: String {
        switch self {
        case .ok: "OK"
        case .notFound: "Not Found"
        }
    }
}
