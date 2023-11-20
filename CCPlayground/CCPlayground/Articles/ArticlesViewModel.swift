//
//  ArticlesViewModel.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 11/19/23.
//

import Foundation

class ArticlesViewModel {
    
    private let service: ArticlesService
    
    init(service: ArticlesService = ArticlesService()) {
        self.service = service
    }
    
}
