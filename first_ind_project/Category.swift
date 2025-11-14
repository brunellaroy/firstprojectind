//
//  SwiftUIView.swift
//  first_ind_project
//
//  Created by Brunella Roy Chowdhury on 13/11/25.
//

import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
}

// Your sample categories
let sampleCategories: [Category] = [
    Category(name: "Motori", icon: "car.fill"),
    Category(name: "Market", icon: "scooter"),
    Category(name: "Immobili", icon: "house.fill"),
    Category(name: "Lavoro", icon: "briefcase.fill"),
    
]

struct CategoryItem: View {
    let category: Category

    var body: some View {
        VStack(spacing: 8) {
            ZStack {
                Circle()
                    .fill(Color(.systemGray6))
                    .frame(width: 70, height: 70)

                Image(systemName: category.icon)
                    .font(.system(size: 28))
                    .foregroundColor(.black)
            }

            Text(category.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
        .frame(width: 80)
    }
}
