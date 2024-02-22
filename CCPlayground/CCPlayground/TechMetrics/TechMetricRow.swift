//
//  TechMetricRow.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 2/7/24.
//

import SwiftUI

struct TechMetricRow: View {
    
    @State private var isShowingTooltip = false
    
    var metric: MetricsList
    
    var body: some View {
        HStack {
            Text(metric.name ?? "")
                .padding(.leading)
            Button(action: {
                // Add your button action here
                isShowingTooltip.toggle()
            }) {
                Image(systemName: "info.circle")
                    .foregroundColor(.blue)
            }
            
            Spacer()
            Text("\(metric.value ?? 0)")
                .padding(.trailing)
        }
        .frame(height: 100)
        .background(Color.white)
        .cornerRadius(10.0)
        .overlay(content: {
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(Color.gray, lineWidth: 1)
        })
        .padding()
    }
}

#Preview {
    TechMetricRow(metric: MetricsList.sampleMetric)
}
