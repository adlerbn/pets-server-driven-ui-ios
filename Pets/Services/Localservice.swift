//
//  Localservice.swift
//  Pets
//
//  Created by Yahya on 7/30/24.
//

import Foundation

class Localservice: NetworkService {
    
    func load(_ resourceName: String) async throws -> ScreenModel {
        guard
            let path = Bundle.main.path(forResource: resourceName, ofType: "json")
        else {
            fatalError("Resource file \(resourceName) not found!")
        }
        
        let url = URL(filePath: path)
        let data = try Data(contentsOf: url)
        let screenModel = try JSONDecoder().decode(ScreenModel.self, from: data)
        
        return screenModel
    }
}
