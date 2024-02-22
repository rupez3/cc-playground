//
//  TechMetricsViewModel.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 2/7/24.
//

import Foundation

class TechMetricsViewModel: ObservableObject {
    
    @Published var model: TechMetricsModel?
    
    private let service: TechMetricsService
    
    init(with service: TechMetricsService = TechMetricsService(), isMockData: Bool) {
        self.service = service
        if isMockData {
            self.model = service.getSampleData()
        } else {
            fetchData()
        }
    }
    
    private func fetchData() {
        Task {
            if let fetchedModel = await service.getTechMetrics() {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    self.model = fetchedModel
                }
            }
        }
    }
    
}
