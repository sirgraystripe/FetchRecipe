//
//  URLSession+Extensions.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

extension URLSession {
    /// Return a `HTTPURLResponse` as the response of an HTTP request, instead of the limited URLResponse.
    /// Not sure why this isn't in the standard library yet.
    func dataResponse(for request: URLRequest) async throws -> (Data, HTTPURLResponse) {
        let (data, response) = try await URLSession.shared.data(for: request)
        return (data, response.httpURLResponse)
    }
}
