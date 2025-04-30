//
//  ListExampleView.swift
//  apple_lab08_01_Introduction_SwiftUI
//
//  Created by developer on 4/30/25.
//

// /*  Example 6: Simple List with Navigation

import SwiftUI

struct Fruit: Identifiable {
    let id = UUID()
    let name: String
    let emoji: String
    let color: Color
}

struct _6_ListExampleView: View {
    let fruits = [
        Fruit(name: "Apple", emoji: "🍎", color: .red),
        Fruit(name: "Banana", emoji: "🍌", color: .yellow),
        Fruit(name: "Orange", emoji: "🍊", color: .orange),
        Fruit(name: "Watermelon", emoji: "🍉", color: .green),
        Fruit(name: "Grapes", emoji: "🍇", color: .purple),
        Fruit(name: "Strawberry", emoji: "🍓", color: .pink),
        Fruit(name: "Blueberry", emoji: "🫐", color: .blue),
        Fruit(name: "Kiwi", emoji: "🥝", color: .green)
    ]
    
    var body: some View {
        List(fruits) { fruit in
            NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                HStack {
                    Text(fruit.emoji)
                        .font(.largeTitle)
                    
                    Text(fruit.name)
                        .font(.headline)
                    
                    Spacer()
                    
                    Circle()
                        .fill(fruit.color)
                        .frame(width: 20, height: 20)
                }
                .padding(.vertical, 8)
            }
        }
        .navigationTitle("Fruits")
    }
}

struct FruitDetailView: View {
    let fruit: Fruit
    
    var body: some View {
        VStack(spacing: 20) {
            Text(fruit.emoji)
                .font(.system(size: 150))
            
            Text(fruit.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(fruit.color)
            
            Text("This is a \(fruit.name.lowercased()). It's delicious and nutritious!")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
        }
        .padding()
        .navigationTitle(fruit.name)
    }
}

#Preview {
    _6_ListExampleView()
}


// */
