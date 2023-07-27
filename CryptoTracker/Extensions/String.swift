//
//  String.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/27.
//

import Foundation

extension String {
    
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
