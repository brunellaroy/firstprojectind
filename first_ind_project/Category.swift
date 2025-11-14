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
    let color: Color
}

let sampleCategories: [Category] = [
    Category(name: "Motori",   icon: "car.fill",         color: .red),
    Category(name: "Moda",   icon: "tshirt.fill",  color: .purple),
    Category(name: "Immobili", icon: "building.2",       color: .green),
    Category(name: "Lavoro",   icon: "briefcase.fill",   color: .blue),
    Category(name: "Market",   icon: "storefront.fill",  color: .orange)
]


struct CategoryItem: View {
    let category: Category
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(Color(.systemGray5))
                    .frame(width: 60, height: 60)

                Image(systemName: category.icon)
                    .font(.system(size: 26))
                    .foregroundColor(category.color)
            }

            Text(category.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
    }
}


struct CategoryDetailView: View {
    let category: Category
    
    var body: some View {
        VStack {
            Text("Selected Category")
                .font(.title2)
                .padding(.bottom, 8)
            
            Text(category.name)
                .font(.largeTitle)
                .bold()
        }
        .padding()
    }
}
