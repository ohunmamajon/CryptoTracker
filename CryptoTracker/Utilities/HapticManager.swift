//
//  HapticManager.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/25.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
