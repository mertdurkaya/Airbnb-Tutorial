//
//  ExploreService.swift
//  AirbnbTutorial
//
//  Created by Mert Durkaya on 23/09/2024.
//

import Foundation

class ExploreService {
    func fecthListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
