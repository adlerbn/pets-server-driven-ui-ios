//
//  NetworkService.swift
//  Pets
//
//  Created by Yahya on 7/30/24.
//

import Foundation

protocol NetworkService {
    
    func load(_ resourceName: String) async throws -> ScreenModel
}
