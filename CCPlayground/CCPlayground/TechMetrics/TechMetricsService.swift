//
//  TechMetricsService.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 2/6/24.
//

import Foundation

class TechMetricsService {
    
    func getTechMetrics() async -> TechMetricsModel? {
        
        guard let data = Utility.loadJSONFromFile(named: "TechMetricsMock") else {
            return nil
        }
        
        do {
            let model = try JSONDecoder().decode(TechMetricsModel.self, from: data)
            return model
        } catch {
            return nil
        }
    }
    
    func getSampleData() -> TechMetricsModel? {
        guard let data = Utility.loadJSONFromFile(named: "TechMetricsMock") else {
            return nil
        }
        
        do {
            let model = try JSONDecoder().decode(TechMetricsModel.self, from: data)
            return model
        } catch {
            return nil
        }
        
    }
    
}
