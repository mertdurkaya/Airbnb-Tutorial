//
//  DeveloperPreview.swift
//  AirbnbTutorial
//
//  Created by Mert Durkaya on 20/09/2024.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()

    var listings: [Listing] = [
        .init(id: UUID().uuidString,
              ownerId: UUID().uuidString,
              ownerName: "Mert Durkaya",
              ownerImageUrl: "male-profile-photo",
              numberOfBedrooms: 2,
              numberOfBathrooms: 1,
              numberOfGuests: 2,
              numberOfBeds: 2,
              pricePerNight: 777,
              latitude: 37.7749,
              longitude: -122.4194,
              imageUrls: ["listing-1", "listing-2", "listing-3"],
              address: "1234 Main Street",
              city: "San Francisco",
              state: "CA",
              title: "Modern apartment in the heart of downtown",
              rating: 4.32,
              features: [.selfCheckIn, .superHost],
              amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
              type: .villa),
        .init(id: UUID().uuidString,
              ownerId: UUID().uuidString,
              ownerName: "Jane Doe",
              ownerImageUrl: "jane",
              numberOfBedrooms: 1,
              numberOfBathrooms: 1,
              numberOfGuests: 2,
              numberOfBeds: 1,
              pricePerNight: 321,
              latitude: 25.7617,
              longitude: -80.1918,
              imageUrls: ["listing-2", "listing-3", "listing-4"],
              address: "5678 Elm Street",
              city: "Miami",
              state: "CA",
              title: "Cozy studio with great views",
              rating: 4.12,
              features: [.selfCheckIn],
              amenities: [.wifi, .kitchen, .laundry, .office],
              type: .apartment),
        .init(id: UUID().uuidString,
              ownerId: UUID().uuidString,
              ownerName: "Jane Doe",
              ownerImageUrl: "jane",
              numberOfBedrooms: 1,
              numberOfBathrooms: 1,
              numberOfGuests: 2,
              numberOfBeds: 1,
              pricePerNight: 123,
              latitude: 34.0549,
              longitude: -118.2426,
              imageUrls: ["listing-3", "listing-4", "listing-1", "listing-2"],
              address: "5678 Elm Street",
              city: "Los Angeles",
              state: "CA",
              title: "Cozy studio with great views",
              rating: 4.87,
              features: [.selfCheckIn],
              amenities: [.wifi, .kitchen, .pool, .tv],
              type: .villa)
    ]
}
