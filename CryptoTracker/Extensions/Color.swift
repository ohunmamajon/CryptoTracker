//
//  Color.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/16.
//

import Foundation
import SwiftUI
extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let tint = Color("TintColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}
