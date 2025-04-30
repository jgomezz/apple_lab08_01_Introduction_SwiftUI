//
//  _4_FormExampleView.swift
//  apple_lab08_01_Introduction_SwiftUI
//
//  Created by developer on 4/30/25.
//

// /*  Example 4: Form Controls and Bindings

import SwiftUI

struct _4_FormExampleView: View {
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

#Preview {
    _4_FormExampleView()
}

// */
