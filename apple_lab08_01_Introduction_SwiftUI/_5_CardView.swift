//
//  _5_CardView.swift
//  apple_lab08_01_Introduction_SwiftUI
//
//  Created by developer on 4/30/25.
//

import SwiftUI

// /*  Example 5: Image and CardView

struct CardView: View {
   let imageName: String
   let title: String
   let description: String
   
   @State private var isFavorite = false
   
   var body: some View {
       VStack {
           Image(systemName: imageName)
               .font(.system(size: 80))
               .foregroundColor(.blue)
               .padding()
           
           Text(title)
               .font(.title)
               .fontWeight(.bold)
           
           Text(description)
               .font(.body)
               .multilineTextAlignment(.center)
               .padding()
               .foregroundColor(.secondary)
           
           Button(action: {
               isFavorite.toggle()
           }) {
               Label(
                   isFavorite ? "Remove from Favorites" : "Add to Favorites",
                   systemImage: isFavorite ? "heart.fill" : "heart"
               )
               .padding()
               .foregroundColor(.white)
               .background(isFavorite ? Color.red : Color.blue)
               .cornerRadius(10)
           }
       }
       .padding()
       .background(Color.gray.opacity(0.1))
       .cornerRadius(15)
       .shadow(radius: 5)
       .padding()
   }
}

struct _5_CardExampleView: View {
   var body: some View {
       ScrollView {
           VStack(spacing: 20) {
               CardView(
                   imageName: "swift",
                   title: "Learn Swift",
                   description: "Swift is a powerful programming language created by Apple for building iOS, macOS, watchOS, and tvOS apps."
               )
               
               CardView(
                   imageName: "paintbrush",
                   title: "SwiftUI",
                   description: "SwiftUI is an innovative, declarative framework for building user interfaces across all Apple platforms."
               )
               
               CardView(
                   imageName: "gear",
                   title: "Settings",
                   description: "Configure your application settings and preferences."
               )
           }
       }
       .navigationTitle("Card Examples")
   }
}

 #Preview {
     _5_CardExampleView()
 }

// */
