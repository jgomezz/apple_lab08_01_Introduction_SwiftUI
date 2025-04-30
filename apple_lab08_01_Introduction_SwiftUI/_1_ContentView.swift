//
//  ContentView.swift
//  apple_lab08_01_Introduction_SwiftUI
//
//  Created by developer on 4/29/25.
//

// /*  Example 1: Text and Styling

import SwiftUI

struct _1_ContentView: View {
   var body: some View {
       VStack(spacing: 20) {
           Text("Hello, SwiftUI!")
               .font(.largeTitle)
               .foregroundColor(.blue)
               .bold()
           
           Text("This is a subheading")
               .font(.subheadline)
               .foregroundColor(.gray)
               .italic()
           
           Text("This is a longer paragraph of text that will demonstrate how SwiftUI handles text wrapping for longer content that doesn't fit on a single line.")
               .font(.body)
               .multilineTextAlignment(.center)
               .padding()
               .background(Color.yellow.opacity(0.2))
               .cornerRadius(10)
       }
       .padding()
   }
}


 #Preview {
     _1_ContentView()
 }

 
// */



 /*  Ejercicio 00

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                
                Text("Hello, SwiftUI!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .bold()
                
                Text("This is a subheading")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .italic()
                
                Text("This is a longer paragraph of text that will demonstrate how SwiftUI handles text wrapping for longer content that doesn't fit on a single line.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.yellow.opacity(0.2))
                    .cornerRadius(10)
                
                Group {
                    Text("Font Size: Large Title")
                        .font(.largeTitle)

                    Text("Font Size: Title")
                        .font(.title)
                        
                    Text("Font Size: Headline")
                        .font(.headline)
                        
                    Text("Font Size: Body")
                        .font(.body)
                        
                    Text("Font Size: Callout")
                        .font(.callout)
                        
                    Text("Font Size: Caption")
                        .font(.caption)
                }
                    
                Group {
                    Text("Weight: Regular")
                        .fontWeight(.regular)
                        
                    Text("Weight: Bold")
                        .fontWeight(.bold)
                        
                    Text("Weight: Heavy")
                        .fontWeight(.heavy)
                }
                
                Text("Frame Example")
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color.purple.opacity(0.3))
                    .foregroundColor(.purple)
                    .cornerRadius(10)
                
                Text("Border Example")
                    .padding()
                    .border(Color.green, width: 2)
            
                Text("Overlay Example")
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.red, lineWidth: 2)
                        )
                
                Text("Combined Styling")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                              
                Text("This text has custom line spacing\nMultiple lines with increased space between them")
                       .lineSpacing(10)
                       .padding()
                       .background(Color.gray.opacity(0.1))
                       .cornerRadius(10)
                   
                Text("TRACKING EXAMPLE")
                       .tracking(5)
                       .font(.headline)
             
                Text("Underlined Text")
                    .underline()
                    .font(.headline)
                
                Text("Underlined Text with Color")
                    .underline(true, color: .red)
                    .font(.headline)
                    
                Text("Strikethrough Text")
                    .strikethrough()
                    .font(.headline)
                    
                Text("Strikethrough Text with Color")
                    .strikethrough(true, color: .red)
                    .font(.headline)
                
                HStack(alignment: .center) {
                    Text("Normal")
                    Text("Superscript").font(.caption).baselineOffset(10)
                    Text("Normal")
                    Text("Subscript").font(.caption).baselineOffset(-5)
                }
                
            }.padding()
            
        }
    }
}

#Preview {
  ContentView()
}

  
// */















