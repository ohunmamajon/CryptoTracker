//
//  SettingsView.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/28.
//

import SwiftUI

struct SettingsView: View {
    
    
    @Environment(\.dismiss) var dismiss
    
    let defaultURL = URL(string: "https://www.google.com")!
    let gitHubURL = URL(string: "https://github.com/ohunmamajon")!
    let socialURL = URL(string: "https://www.instagram.com/ohunmamajon")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let linkedInURL = URL(string: "https://www.linkedin.com/in/ohunmamajon")!
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.theme.background
                    .ignoresSafeArea()
                
                // content
                List {
                    swiftfulThinkingSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton(dismiss: dismiss)
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var swiftfulThinkingSection: some View {
        Section(header: Text("Project")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This project is done for the purpose of practicing SwiftUi and Combine. It uses MVVM Architecture, Combine, and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.tint)
            }
            .padding(.vertical)
            Link("Find me on GitHub 👨‍💻", destination: gitHubURL )
                .foregroundColor(Color.blue)
            Link("Connect on LinkedIn 🙋‍♂️", destination: linkedInURL)
                .foregroundColor(Color.blue)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed. \n Warning: Public API has a rate limit of 10-30 calls/minut. Relaunch app after 1-2 minutes in case no data is shown")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.tint)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 🦎", destination: coingeckoURL)
                .foregroundColor(Color.blue)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("me")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Okhunjon Mamajonov. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers, and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.tint)
            }
            .padding(.vertical)
            Link("My social  🤳", destination: socialURL)
                .foregroundColor(Color.blue)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            VStack(alignment: .leading, spacing: 8) {
                Link("Terms of Service", destination: defaultURL)
                Link("Privacy Policy", destination: defaultURL)
                Link("Company Website", destination: defaultURL)
                Link("Learn More", destination: defaultURL)
            }
            .foregroundColor(Color.blue)
        }
    }
    
    
}
