//
//  ExploreViewModel.swift
//  AirbnbTutorial
//
//  Created by Mert Durkaya on 23/09/2024.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService

    init(service: ExploreService) {
        self.service = service

        Task {
            await fetchListing()
        }
    }

    func fetchListing() async {
        do {
            listings = try await service.fecthListings()
        } catch {
            print("DEBUG: Error fetching listings: \(error)")
        }
    }

    func updateListingsForLocation() {
        if searchLocation.isEmpty {
            Task {
                await fetchListing()
            }
        } else {
            listings = listings.filter { $0.city.lowercased().contains(searchLocation.lowercased()) || $0.state.lowercased().contains(searchLocation.lowercased()) }
        }
    }
}
