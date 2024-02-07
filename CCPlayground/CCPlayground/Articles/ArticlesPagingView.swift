//
//  ArticlesPagingView.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 11/20/23.
//

import SwiftUI

struct ArticlesPagingView: View {
    
    @State private var selectedTab = 0
    
    private let tabs = ["New Alerts", "Saved Articles", "Tab 3"]
    
    var body: some View {
        VStack {
            
            TabMenuView(selectedTab: $selectedTab)
            
            TabView(selection: $selectedTab) {
                ForEach(0..<tabs.count) { index in
                    Text("Content for \(tabs[index])")
                        .tabItem {
                            Text(tabs[index])
                        }
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

#Preview {
    ArticlesPagingView()
}
