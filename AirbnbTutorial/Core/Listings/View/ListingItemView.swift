//
//  ListingItemView.swift
//  AirbnbTutorial
//
//  Created by Mert Durkaya on 15/09/2024.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing

    var body: some View {
        VStack(spacing: 8) {
            HStack {
                ListingImageCarouselView(listing: listing)
                    .frame(height: 320)
                    .cornerRadius(12)
            }

            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.city)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)

                    Text("12 mi away")
                        .foregroundColor(.secondary)

                    Text("Nov 3 - Nov 10")
                        .foregroundColor(.secondary)

                    HStack {
                        Text("$\(listing.pricePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }

                Spacer()

                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                    Text("\(listing.rating)")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
