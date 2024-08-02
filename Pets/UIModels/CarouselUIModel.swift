//
//  CarouselUIModel.swift
//  Pets
//
//  Created by Yahya on 7/30/24.
//

import Foundation

struct CarouselRowUIModel: Decodable, Identifiable {
    
    let id = UUID()
    let petId: Int
    let imageUrl: URL
    
    private enum CodingKeys: CodingKey {
        case petId
        case imageUrl
    }
}

struct CarouselUIModel: Decodable {
    
    let items: [CarouselRowUIModel]
    let action: Action
}
