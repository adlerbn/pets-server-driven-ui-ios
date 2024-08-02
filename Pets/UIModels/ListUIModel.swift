//
//  ListUIModel.swift
//  Pets
//
//  Created by Yahya on 8/2/24.
//

import Foundation

struct RowUIModel: Decodable {
    let id: Int
    let title:String
    let subTitle: String?
    let imageUrl: URL?
    let description: String?
}

struct ListUIModel: Decodable {
    let rows: [RowUIModel]
    let action: Action
}
