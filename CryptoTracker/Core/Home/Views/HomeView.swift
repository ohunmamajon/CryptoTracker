//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/16.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortfolio : Bool = false
    
    var body: some View {
        ZStack{
            // background layer
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack{
                homeHeader
    
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            HomeView()
                .toolbar(.hidden, for: .navigationBar)
        }
    }
}

extension HomeView {
    private var homeHeader : some View {
        
        HStack{
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none, value: showPortfolio)
                .background(
                CircleButtonAnimationView(animate: $showPortfolio)
                )
            Spacer()
            Text( showPortfolio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.tint)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle.degrees(showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
