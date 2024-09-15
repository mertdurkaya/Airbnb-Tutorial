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
            // images
            HStack {
                TabView {
                    ForEach(images, id: \.self) { image in
                        Image(image)
                            .resizable()
                            .scaledToFill()
                    }
                }
                .frame(height: 320)
                .cornerRadius(12)
                // tabviewstyle is page for ios and automatic for macos
                .tabViewStyle(.page)
            }

            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)

                    Text("12 mi away")
                        .foregroundColor(.secondary)

                    Text("Nov 3 - Nov 10")
                        .foregroundColor(.secondary)

                    HStack {
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                }

                Spacer()

                // rating

                HStack(spacing: 4) {
                    Image(systemName: "star.fill")
                    Text("4.73")
                }
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
