//
//  TextRowComponent.swift
//  Pets
//
//  Created by Yahya on 8/2/24.
//

import SwiftUI

struct TextRowComponent: UIComponent {
    
    let id = UUID()
    let uiModel: TextRowUIModel
    
    func render() -> AnyView {
        Text(uiModel.text)
            .toAnyView()
    }
}
