//
//  Utility.swift
//  CCPlayground
//
//  Created by Chhetri, Rupesh on 11/15/23.
//

import Foundation

class Utility {
    
    static func loadJSONFromFile(named filename: String) -> Data? {
        
        guard let fileUrl = Bundle.main.url(forResource: filename, withExtension: "json") else {
            return nil
        }
        
        let data = try? Data(contentsOf: fileUrl)
        return data
        
    }
    
}
