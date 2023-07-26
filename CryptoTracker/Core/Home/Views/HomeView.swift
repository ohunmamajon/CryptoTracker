//
//  HomeView.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/16.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    
    @State private var showPortfolio : Bool = false
    @State private var showPortfolioView: Bool = false
    
    var body: some View {
        ZStack{
            // background layer
            Color.theme.background
                .ignoresSafeArea()
                .sheet(isPresented: $showPortfolioView, content: {
                                PortfolioView()
                                    .environmentObject(vm)
                            })
            
            // content layer
            VStack{
                homeHeader
                
                HomeStatsView(showPortfolio: $showPortfolio)
                
                SearchBarView(searchText: $vm.searchText)
                
                columnTitles
                
    
                if !showPortfolio {
                    
                   allCoinsList
                    .transition(.move(edge: .leading))
                    .refreshable {
                        vm.reloadData()
                    }
                }
                if showPortfolio {
                    portfolioCoinList
                        .transition(.move(edge: .trailing))
                }
                
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
        .environmentObject(dev.homeVM)
    }
}

extension HomeView {
    private var homeHeader : some View {
        
        HStack{
            CircleButtonView(iconName: showPortfolio ? "plus" : "info")
                .animation(.none, value: showPortfolio)
                .onTapGesture {
                    if showPortfolio {
                        showPortfolioView.toggle()
                    }
                }
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
    
    private var allCoinsList: some View {
        List{
            ForEach(vm.allCoins) { coin in
                MyLazyNavigationLink {
                    DetailView(coin: coin)
                } label: {
                    CoinRowView(coin: coin, showHoldingsColumn: false)
                        .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                }
            }
        }
        .listStyle(.plain)
    }
    
    private var portfolioCoinList: some View {
        List{
            ForEach(vm.portfolioCoins) { coin in
                CoinRowView(coin: coin, showHoldingsColumn: true)
                    .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
            }
        }
        .listStyle(.plain)
    }
    private var columnTitles: some View {
        HStack(spacing: 4){
            HStack(spacing: 4) {
                           Text("Coin")
                           Image(systemName: "chevron.down")
                               .opacity((vm.sortOption == .rank || vm.sortOption == .rankReversed) ? 1.0 : 0.0)
                               .rotationEffect(Angle(degrees: vm.sortOption == .rank ? 0 : 180))
                       }
                       .onTapGesture {
                           withAnimation(.default) {
                               vm.sortOption = vm.sortOption == .rank ? .rankReversed : .rank
                           }
                       }
                       
                       Spacer()
                       if showPortfolio {
                           HStack(spacing: 4) {
                               Text("Holdings")
                               Image(systemName: "chevron.down")
                                   .opacity((vm.sortOption == .holdings || vm.sortOption == .holdingsReversed) ? 1.0 : 0.0)
                                   .rotationEffect(Angle(degrees: vm.sortOption == .holdings ? 0 : 180))
                           }
                           .onTapGesture {
                               withAnimation(.default) {
                                   vm.sortOption = vm.sortOption == .holdings ? .holdingsReversed : .holdings
                               }
                           }
                       }
                       HStack(spacing: 4) {
                           Text("Price")
                           Image(systemName: "chevron.down")
                               .opacity((vm.sortOption == .price || vm.sortOption == .priceReversed) ? 1.0 : 0.0)
                               .rotationEffect(Angle(degrees: vm.sortOption == .price ? 0 : 180))
                       }
                       .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
                       .onTapGesture {
                           withAnimation(.default) {
                               vm.sortOption = vm.sortOption == .price ? .priceReversed : .price
                           }
                       }
                
        }
        .font(.caption)
        .foregroundColor(Color.theme.secondaryText)
        .padding(.horizontal)
    }
}
