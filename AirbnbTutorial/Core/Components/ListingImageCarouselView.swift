//
//  ListingImageCarouselView.swift
//  AirbnbTutorial
//
//  Created by Mert Durkaya on 16/09/2024.
//

import SwiftUI

struct ListingImageCarouselView: View {

    let listing: Listing

    var body: some View {
        TabView {
            ForEach(listing.imageUrls, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
