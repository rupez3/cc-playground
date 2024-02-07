//
//  TechMetricsModel.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 2/6/24.
//

import Foundation

// MARK: - TechMetrics
struct TechMetricsModel: Codable {
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
struct MetricsList: Codable {
    let definition: String?
    let color: String?
    let exclusionList: [String]?
    let name: String?
    let value: Double?

}

