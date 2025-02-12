//
//  Constants.swift
//  Pets
//
//  Created by Yahya on 7/30/24.
//

import Foundation

struct Constants {
    
    struct ScreenResources {
        
        static let baseUrl = "localhost"
        static let petListing = "pet-listing"
        
        static func petDetail(petId: Int) -> String {
            "pet-detail/\(petId)"
        }
        
        static func resource(for resourceName: String) -> URL? {
            
            var components = URLComponents()
            
            components.scheme = "http"
            components.encodedHost = baseUrl
            components.port = 8080
            components.path = "/\(resourceName)"
            
            return components.url
        }
    }
    
    struct Urls {
        
        static let baseUrl = "http://localhost:3000/"
        static let petListing = "\(baseUrl)pet-listing"
    }
    
}
