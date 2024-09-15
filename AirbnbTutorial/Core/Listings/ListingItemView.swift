//
//  ListingItemView.swift
//  AirbnbTutorial
//
//  Created by Mert Durkaya on 15/09/2024.
//

import SwiftUI

struct ListingItemView: View {
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]

    var body: some View {
        VStack(spacing: 8) {
            HStack {
                ListingImageCarouselView()
                    .frame(height: 320)
                    .cornerRadius(12)
            }

            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)

                    Text("12 mi away")
                        .foregroundColor(.secondary)

                    Text("Nov 3 - Nov 10")
                        .foregroundColor(.secondary)

                    HStack {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black)
                }

                Spacer()

                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                    Text("4.73")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
