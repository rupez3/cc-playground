//
//  TechMetricsView.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 2/7/24.
//

import SwiftUI

struct TechMetricsView: View {
    
    @ObservedObject var vm: TechMetricsViewModel
    
    var body: some View {
        List {
            Section {
                ForEach(vm.model?.metricsList ?? [], id: \.id) { metric in
                    TechMetricRow(metric: metric)
                        .listRowSeparator(.hidden, edges: .all)
                        
                }
            } header: {
                Text(vm.model?.fiscalMonth ?? "")
                    .padding(.leading)
            } footer: {
                
            }
            .listRowInsets(.init())
        }
        .listStyle(.plain)
    }
}

#Preview {
    TechMetricsView(vm: TechMetricsViewModel(isMockData: true))
}
