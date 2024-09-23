//
//  ExploreViewModel.swift
//  AirbnbTutorial
//
//  Created by Mert Durkaya on 23/09/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService

    init(service: ExploreService) {
        self.service = service
        
        Task {
            await fetchListing()
        }
    }

    func fetchListing() async {
        do {
            self.listings = try await service.fecthListings()
        } catch {
            print("DEBUG: Error fetching listings: \(error)")
        }
    }
}
