//
//  AppNetwork.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import Foundation

struct AppNetwork<DTO: Codable> {
    static func get(url: URL) async -> NetworkResult<DTO> {
        await perform(.get, request: URLRequest(url: url))
    }

    private enum Method {
        case get
    }

    private static func perform(_: Method, request: URLRequest) async -> NetworkResult<DTO> {
        let responseData: Data
        let response: HTTPURLResponse

        do {
            (responseData, response) = try await URLSession.shared.dataResponse(for: request)
        } catch {
            AppLogger.Network.error("\(error)")
            return .failure(.transportError(error.localizedDescription))
        }

        guard let code = response.responseCode else {
            return .failure(.transportError("Unknown response code for response \(response.statusCode)"))
        }

        if [.notFound].contains(code) {
            return .failure(.transportError(code.userFriendlyDescription))
        }

        // Decode, for now
        do {
            let dto = try JSONDecoder().decode(DTO.self, from: responseData)
            return .success(dto)
        } catch {
            AppLogger.Network.error("\(error)")
            return .failure(.jsonError(error.localizedDescription))
        }
    }
}
