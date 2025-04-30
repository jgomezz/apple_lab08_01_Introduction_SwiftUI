//
//  ContentView.swift
//  apple_lab08_01_Introduction_SwiftUI
//
//  Created by developer on 4/29/25.
//

import SwiftUI


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

// */


 /*  Example 1: Text and Styling

struct ContentView: View {
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

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      ContentView()
  }
}
// */


 /*  Example 2: Basic Layout with Stacks

struct ContentView: View {
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

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
      StacksExampleView()
  }
}
  
// */


 /*  Example 3: State and Buttons

struct ContentView: View {
    
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// */


 /*  Example 4: Form Controls and Bindings

struct ContentView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var age = 18.0
    @State private var notificationsEnabled = false
    @State private var preferredColor = "Blue"
    
    let colors = ["Red", "Green", "Blue", "Yellow", "Purple"]
    
    var body: some View {
        Form {
            Section(header: Text("Personal Information")) {
                TextField("Name", text: $name)
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                
                VStack {
                    Text("Age: \(Int(age))")
                    Slider(value: $age, in: 18...100, step: 1)
                }
            }
            
            Section(header: Text("Preferences")) {
                Toggle("Enable Notifications", isOn: $notificationsEnabled)
                
                Picker("Favorite Color", selection: $preferredColor) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("Summary")) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Name: \(name)")
                    Text("Email: \(email)")
                    Text("Age: \(Int(age))")
                    Text("Notifications: \(notificationsEnabled ? "Enabled" : "Disabled")")
                    Text("Favorite Color: \(preferredColor)")
                }
                .padding(.vertical, 5)
            }
        }
        .navigationTitle("Form Example")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

// */







