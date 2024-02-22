//
//  TechMetricsModel.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 2/6/24.
//

import Foundation

// MARK: - TechMetrics
struct TechMetricsModel: Codable, Identifiable {
    let id: String?
    let techID: String?
    let techNTId: String?
    let region: String?
    let phtPurePassCount: Int?
    let toolUsage: Double?
    let phtrtmJobs: Int?
    let metricsList: [MetricsList]?
    let dataLastReported: String?
    let tnpsRate: Double?
    let phtPassRate: Int?
    let phtPurePassRate: Int?
    let tnpsSurveyCount: Int?
    let fiscalMonth: String?
    let metRate: Int?
    let phtFailures: Int?
    let contactWithin48HoursCount: Int?
    let phtJobs: Int?
    let techName: String?
    let techFTR: Double?
    let contactWithin48HoursRate: Double?

}

// MARK: - MetricsList
struct MetricsList: Codable, Identifiable {
    
    var id: String {
        return UUID().uuidString
    }
    
    var definition: String?
    var color: String?
    var exclusionList: [String]?
    var name: String?
    var value: Double?
    
    private enum CodingKeys: String, CodingKey {
        case definition, color, exclusionList, name, value
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.definition = try container.decodeIfPresent(String.self, forKey: .definition)
        self.color = try container.decodeIfPresent(String.self, forKey: .color)
        self.exclusionList = try container.decodeIfPresent([String].self, forKey: .exclusionList)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.value = try container.decodeIfPresent(Double.self, forKey: .value)
    }
    
    init() {}
    
    static var sampleMetric: MetricsList = {
        var metric = MetricsList()
        metric.definition = "First time right (FTR) is the positive percentage of the all-in rework. Rework occurs when 2 tech visits to the same house occur within 30 days. The first tech to visit gets the credit for the additional truck roll.In the first week of each fiscal month, Daily Tech Metric performance in Tech360 may reflect over or understated scores due to low volume of completed work surveys. Please contact your supervisor for details related to FTR."
        metric.color = ""
        metric.exclusionList = nil
        metric.name = "FTR"
        metric.value = 123.45
        return metric
    }()
    
}

