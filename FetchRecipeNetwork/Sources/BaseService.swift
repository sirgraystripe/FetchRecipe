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
}

extension BaseService {
    public var endpoint: Endpoint {
        Endpoint(environment: environment)
    }
}
