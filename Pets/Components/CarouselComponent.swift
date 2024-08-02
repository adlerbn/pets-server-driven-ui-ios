//
//  CarouselComponent.swift
//  Pets
//
//  Created by Yahya on 7/30/24.
//

import SwiftUI

struct CarouselComponent: UIComponent {
    
    let id = UUID()
    let uiModel: CarouselUIModel
    
    func render() -> AnyView {
        CarouselView(
            uiModel: uiModel
        )
        .toAnyView()
    }
}
