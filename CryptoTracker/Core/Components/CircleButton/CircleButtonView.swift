//
//  CircleButtonView.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/16.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName:  String
    
    var body: some View {
       Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.tint)
            .frame(width: 50, height: 50)
            .background(
            Circle()
                .foregroundColor(Color.theme.background)
            )
            .shadow(color: Color.theme.tint.opacity(0.30), radius: 10)
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CircleButtonView(iconName: "info")
                .padding()
                .previewLayout(.sizeThatFits)
            
            CircleButtonView(iconName: "plus")
                .padding()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
       
    }
}
