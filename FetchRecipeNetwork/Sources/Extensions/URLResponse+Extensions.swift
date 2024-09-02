//
//  URLResponse+Extensions.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

extension URLResponse {
    var httpURLResponse: HTTPURLResponse {
        // SAFETY: Quinn the Eskimo's blessing
        // https://forums.developer.apple.com/forums/thread/120099?answerId=372749022#372749022
        self as! HTTPURLResponse
    }
}

extension HTTPURLResponse {
    var responseCode: ResponseCode? {
        ResponseCode(rawValue: httpURLResponse.statusCode)
    }
}
