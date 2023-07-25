//
//  XMarkButton.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/24.
//

import SwiftUI
 struct XMarkButton: View {
    
     var dismiss: DismissAction?
    
    var body: some View {
        Button(action: {
            dismiss?()
            print("Dismiss called")
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
                .foregroundColor(Color.theme.tint
                )
        })


    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton(dismiss: nil)
    }
}

