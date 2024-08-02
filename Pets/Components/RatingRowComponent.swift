//
//  RatingRowComponent.swift
//  Pets
//
//  Created by Yahya on 8/2/24.
//

import SwiftUI

struct RatingRowComponent: UIComponent {
    
    let id = UUID()
    let uiModel: RatingRowUIModel
    
    func render() -> AnyView {
        RatingView(
            rating: .constant(uiModel.rating)
        )
        .toAnyView()
    }
}
