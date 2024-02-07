//
//  TabMenuView.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 11/20/23.
//

import SwiftUI

struct TabMenuView: View {
    @Binding var selectedTab: Int
    private let tabs = ["New Alerts", "Saved Articles", "Tab 3", "Tab 33333"]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollViewReader { scrollView in
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        ForEach(0..<tabs.count) { index in
                            VStack {
                                Button(action: {
                                    withAnimation {
                                        selectedTab = index
                                    }
                                    
                                }) {
                                    Text(tabs[index])
                                        .foregroundColor(index == selectedTab ? .blue : .black)
                                        .padding()
                                        .cornerRadius(10)
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .fixedSize()
                                }
                                // Line view below the text
                                Rectangle()
                                    .frame(height: 4)
                                    .foregroundColor(index == selectedTab ? .blue : .clear)
                                    .scaleEffect(x: index == selectedTab ? 1.0 : 0.0, y: 1.0)
                                    .animation(.easeIn)
                            }
                        }
                    }
                    .frame(minWidth: geometry.size.width, maxWidth: CGFloat.infinity, minHeight: 0, maxHeight: 60, alignment: .center)
                    
                }
                .onChange(of: selectedTab) { _ in
                    
                }
            }
            
        }
    }
    
}

#Preview {
    TabMenuView(selectedTab: .constant(2))
}
