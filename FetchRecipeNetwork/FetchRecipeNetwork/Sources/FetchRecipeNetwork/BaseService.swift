//
//  BaseService.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import FetchRecipeCore
import Foundation

public protocol BaseService: Sendable {
    var environment: AppEnvironment { get }

    init(environment: AppEnvironment)
}

extension BaseService {
    var endpoint: Endpoint {
        Endpoint(environment: environment)
    }
}
