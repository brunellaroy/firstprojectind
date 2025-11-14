//
//  EvidenceCard.swift
//  first_ind_project
//
//  Created by Brunella Roy Chowdhury on 13/11/25.
//

import SwiftUI

struct ProductItem: Identifiable {
    let id = UUID()
    let title: String
    let price: String
    let location: String
    let imageURL: String
    let photoCount: Int
}

let sampleProducts: [ProductItem] = [
    ProductItem(
        title: "Gucci mocassino",
        price: "320 €",
        location: "Roma (RM)",
        imageURL:"https://images.vestiairecollective.com/images/resized/w=1246,q=75,f=auto,/produit/mocassini-gucci-x-adidas-grigio-scamosciato-44143122-1_2.jpg",
        photoCount: 6
    ),
    
    ProductItem(
        title: "Scarpe TIMBERLAND",
        price: "50 €",
        location: "Bergamo (BG)",
        imageURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThr9SaReI0NXFZHeEakHx1vJwOfz_KBSZAwQ&s",
        photoCount: 5
    ),
    
    ProductItem(
        title: "Stivali in pelle",
        price: "70 €",
        location: "Bologna (BO)",
        imageURL: "https://sandrinicalzature.it/cdn/shop/products/e-mia-stivale-pelle-donna-nero-samantha-sandrini-calzature-e-abbigliamento-3.jpg?v=1714672394",
        photoCount: 6
    ),
    
    ProductItem(
        title: "Nike Air Max 97",
        price: "250 €",
        location: "Milano (MI)",
        imageURL: "https://static.nike.com/a/images/t_web_pw_592_v2/f_auto/b5693a6f-00dd-45dc-b918-48f378d99dfb/NIKE+AIR+MAX+90+LTR+%28GS%29.png",
        photoCount: 5
    )
]

struct ProductGridCard: View {
    let item: ProductItem
    
    var body: some View {
        GeometryReader { geo in
            let size = geo.size.width  
            
            VStack(alignment: .leading, spacing: 6) {
                
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 16)
                        .fill(Color(.systemGray5))
                        .frame(width: size, height: size)
                    
                    
                    AsyncImage(url: URL(string: item.imageURL)) { phase in
                        switch phase {
                        case .empty:
                            ProgressView()
                                .frame(width: size, height: size)
                            
                        case .success(let image):
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: size, height: size)
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                            
                        case .failure:
                            Image(systemName: "photo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: size * 0.4)
                                .foregroundColor(.gray)
                                .frame(width: size, height: size)
                            
                        @unknown default:
                            EmptyView()
                        }
                    }
                    
                    
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "heart")
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color.black.opacity(0.35))
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                    .padding(8)
                    
                    
                    VStack {
                        Spacer()
                        HStack {
                            HStack(spacing: 4) {
                                Image(systemName: "camera.fill")
                                Text("\(item.photoCount)")
                            }
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.horizontal, 6)
                            .padding(.vertical, 4)
                            .background(Color.black.opacity(0.6))
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                            
                            Spacer()
                        }
                    }
                    .padding(8)

                    
                }
                Text(item.title)
                    .font(.headline)
                    .lineLimit(2)
                
                Text(item.price)
                    .font(.headline)
                    .foregroundColor(.green)
                
                Text(item.location)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .frame(width: size)
        }
        .frame(height: 260)
    }
}
