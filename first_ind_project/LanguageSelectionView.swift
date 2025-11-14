//
//  Languages.swift
//  first_ind_project
//
//  Created by Brunella Roy Chowdhury on 14/11/25.
//

import SwiftUI

struct LanguageSelectionView: View {
    var body: some View {
        Menu {

           
            Button(action: {
                print("English selected")
            }) {
                Label("English", systemImage: "checkmark")
            }

            
            Button(action: {
                print("Italiano selected")
            }) {
                Label("Italiano", systemImage: "")
            }

        } label: {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    LanguageSelectionView()
}
