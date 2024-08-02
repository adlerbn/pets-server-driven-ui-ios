//
//  ListComponent.swift
//  Pets
//
//  Created by Yahya on 8/2/24.
//

import SwiftUI

struct ListComponent: UIComponent {
    
    let id = UUID()
    let uiModel: ListUIModel
    
    func render() -> AnyView {
        ForEach(uiModel.rows, id: \.id) { row in
            Navigator.perform(action: uiModel.action, payload: row) {
                RowComponent(uiModel: row).render()
            }
        }
        .toAnyView()
    }
}
