//
//  Action.swift
//  Pets
//
//  Created by Yahya on 7/31/24.
//

import Foundation

enum ActionType: String, Decodable {
    case sheet
    case push
}

struct Action: Decodable {
    let type: ActionType
    let destination: Route
}
