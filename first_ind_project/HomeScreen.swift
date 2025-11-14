//
//  HomeScreen.swift
//  first_ind_project
//
//  Created by Brunella Roy Chowdhury on 11/11/25.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    @State private var recentCategoryName: String = "Nessuna categoria"

    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                
                VStack(alignment: .leading, spacing: 16) {
                    
            
                    HStack(spacing: 8) {
                        HStack(spacing: 6) {
                            Image(systemName: "magnifyingglass")
                            TextField("Cerca", text: $searchText)
                            
                            Button(action: {
                                print("Voice tapped")
                            }) {
                                Image(systemName: "mic.fill")
                            }
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 8)
                        .background(Color(.systemGray6))
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        
                        LanguageSelectionView()
                    }
                    .padding(.horizontal)
                    .padding(.top, 8)
                    
                  
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            
                            ForEach(sampleCategories) { category in
                                
                                NavigationLink(
                                    destination: CategoryDetailView(category: category)
                                ) {
                                    CategoryItem(category: category)
                                }
                                .simultaneousGesture(TapGesture().onEnded {
                                    recentCategoryName = category.name  // update label
                                })
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    
                    Text("Di Tendenza")
                        .font(.title2)
                        .bold()
                        .padding(.horizontal)
                        .padding(.top, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(trendingItems) { item in
                                TrendingHorizontalCard(item: item)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.top, 4)
                    
                    
                    Text("In evidenza per te")
                        .font(.title2)
                        .bold()
                        .padding(.leading)
                    
                    Text(recentCategoryName)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .padding(.leading)
                    
                
                    let columns = [
                        GridItem(.flexible(), spacing: 16),
                        GridItem(.flexible(), spacing: 16)
                    ]
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(sampleProducts) { item in
                            ProductGridCard(item: item)
                                .frame(height: 260)   // important for square layout
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
