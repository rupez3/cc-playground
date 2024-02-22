//
//  TechMetricCellViewModel.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 2/7/24.
//

import SwiftUI

class MetricCellViewModel: ObservableObject {
    
    @Binding var metric: MetricsList

    init(metric: Binding<MetricsList>) {
        self._metric = metric
    }
    
}
