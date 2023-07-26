//
//  NavigationLazyView.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/26.
//

import Foundation
import SwiftUI

public struct MyLazyNavigationLink<Label: View, Destination: View>: View {
    var destination: () -> Destination
    var label: () -> Label

    public init(@ViewBuilder destination: @escaping () -> Destination,
                @ViewBuilder label: @escaping () -> Label) {
        self.destination = destination
        self.label = label
    }

    public var body: some View {
        NavigationLink {
            LazyView {
                destination()
            }
        } label: {
            label()
        }
    }

    private struct LazyView<Content: View>: View {
        var content: () -> Content
     
        var body: some View {
            content()
        }
    }
}
