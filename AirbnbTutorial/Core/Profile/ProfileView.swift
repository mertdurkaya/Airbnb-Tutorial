//
//  ProfileView.swift
//  AirbnbTutorial
//
//  Created by Mert Durkaya on 19/09/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // profile login view
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Login to plan your next trip")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }

                Button {
                    // Handle login
                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .cornerRadius(8)
                }

                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.gray)

                    Text("Sign Up")
                        .foregroundColor(.pink)
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }

            // profile options
            VStack(spacing: 24) {
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "accessibility", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
