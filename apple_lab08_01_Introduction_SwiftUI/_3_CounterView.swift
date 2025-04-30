//
//  _3_CounterView.swift
//  apple_lab08_01_Introduction_SwiftUI
//
//  Created by developer on 4/30/25.
//

// /*  Example 3: State and Buttons

import SwiftUI

struct _3_CounterView: View {
   
   // State variable to track the count
   @State private var count = 0
   @State private var backgroundColor = Color.white
   
   var body: some View {
       VStack(spacing: 20) {
           Text("Counter Example")
               .font(.largeTitle)
           
           Text("\(count)")
               .font(.system(size: 70, weight: .bold))
               .foregroundColor(count >= 0 ? .blue : .red)
           
           HStack(spacing: 20) {
               // Decrement Button
               Button(action: {
                   count -= 1
               }) {
                   Image(systemName: "minus.circle.fill")
                       .font(.system(size: 40))
                       .foregroundColor(.red)
               }
               
               // Reset Button
               Button(action: {
                   count = 0
               }) {
                   Text("Reset")
                       .font(.headline)
                       .padding()
                       .background(Color.gray.opacity(0.3))
                       .cornerRadius(10)
               }
               
               // Increment Button
               Button(action: {
                   count += 1
               }) {
                   Image(systemName: "plus.circle.fill")
                       .font(.system(size: 40))
                       .foregroundColor(.green)
               }
           }
           
           // Color change button
           Button(action: {
               // Switch between white and light gray
               backgroundColor = (backgroundColor == Color.white) ? Color.gray.opacity(0.2) : Color.white
           }) {
               Text("Change Background")
                   .padding()
                   .background(Color.blue)
                   .foregroundColor(.white)
                   .cornerRadius(10)
           }
           .padding(.top, 40)
       }
       .padding()
       .frame(maxWidth: .infinity, maxHeight: .infinity)
       .background(backgroundColor)
       .animation(.default, value: backgroundColor)
   }
}


#Preview {
    _3_CounterView()
}

// */
