//
//  SearchBarView.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/21.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(searchText.isEmpty ? Color.theme.secondaryText : Color.theme.tint)
            
            TextField("Search by name or symbol...", text: $searchText)
                .foregroundColor(Color.theme.tint)
                .autocorrectionDisabled()
                .overlay(
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(Color.theme.tint)
                    .padding()
                    .offset(x: 10)
                    .opacity(searchText.isEmpty ? 0.0 : 1.0)
                    .onTapGesture {
                        UIApplication.shared.endEditing()
                        searchText = ""
                    }
                , alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.theme.background)
            .shadow(color: Color.theme.tint.opacity(0.15), radius: 10)
        )
        .padding()
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant(""))
    }
}
