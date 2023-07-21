//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/21.
//

import Foundation
import SwiftUI
extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
