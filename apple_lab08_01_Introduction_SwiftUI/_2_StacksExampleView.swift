//
//  _2_StacksExampleView.swift
//  apple_lab08_01_Introduction_SwiftUI
//
//  Created by developer on 4/30/25.
//

// /*  Example 2: Basic Layout with Stacks

import SwiftUI


struct _2_StacksExampleView: View {
   var body: some View {
       VStack(spacing: 30) {
           Text("VStack, HStack, and ZStack Examples")
               .font(.headline)
               .padding()
           
           // HStack Example
           Text("HStack Example:")
               .font(.subheadline)
           
           HStack(spacing: 15) {
               ForEach(1...3, id: \.self) { number in
                   Text("\(number)")
                       .font(.system(size: 20, weight: .bold))
                       .frame(width: 50, height: 50)
                       .background(Color.blue)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               }
           }
           
           // VStack Example
           Text("VStack Example:")
               .font(.subheadline)
           
           VStack(spacing: 10) {
               ForEach(1...3, id: \.self) { number in
                   Text("\(number)")
                       .font(.system(size: 20, weight: .bold))
                       .frame(width: 50, height: 50)
                       .background(Color.green)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               }
           }
           
           // ZStack Example
           Text("ZStack Example:")
               .font(.subheadline)
           
           ZStack {
               Rectangle()
                   .fill(Color.red)
                   .frame(width: 150, height: 150)
               
               Rectangle()
                   .fill(Color.blue)
                   .frame(width: 100, height: 100)
               
               Rectangle()
                   .fill(Color.green)
                   .frame(width: 50, height: 50)
               
               Text("ZStack")
                   .font(.headline)
                   .foregroundColor(.white)
           }
       }
   }
}

// */
#Preview {
    _2_StacksExampleView()
}
