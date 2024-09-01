//
//  Mockable.swift
//
//
//  Created by Peter Kos on 9/1/24.
//

import Foundation

/// A little style enforcement: any mockable thing
/// should have an (ideally `enum`) namespace for its mocked data.
protocol Mockable {
    associatedtype Mock
}
