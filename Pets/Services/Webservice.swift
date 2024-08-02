//
//  Webservice.swift
//  Pets
//
//  Created by Yahya on 7/30/24.
//

import Foundation

class Webservice: NetworkService {
    
    func load(_ resourceName: String) async throws -> ScreenModel {
        
        guard
            let url = Constants.ScreenResources.resource(for: resourceName)
        else {
            throw NetworkError.invalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard 
            let httpResponse = response as? HTTPURLResponse,
            httpResponse.statusCode == 200
        else {
            throw NetworkError.invalidServerResponse
        }
        
        return try JSONDecoder().decode(ScreenModel.self, from: data)
    }
}
