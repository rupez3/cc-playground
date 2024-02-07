//
//  ArticlesModel.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 11/19/23.
//

import Foundation

struct ArticlesModel: Codable {
    
    var alerts: [NewArticle] = []
    
    var savedArticles: [SavedArticle] = []
    
    var alertType: String?
    
    var expirationPeriod: Double?
    
    var retry: RetryModel?

}

struct NewArticle: Codable, Identifiable {
    
    var id = UUID()
    
    var docId: String?
    var title: String?
    var startDate: String?
    var categories: [String]?
    var isRead: Bool?
    var summary: String?
    var status: String?
    var lastModifiedDate: String?
    
}

struct SavedArticle: Codable, Identifiable {
    var id = UUID()
    var docId: String?
    var title: String?
    var startDate: String?
    var isRead: Bool?
    var categories: [String]?
    
}

// MARK: - Retry
struct RetryModel: Codable {
    let isRequired: Bool?
    let timeInSeconds: Double?
    
}
