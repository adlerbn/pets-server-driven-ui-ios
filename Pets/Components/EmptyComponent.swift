//
//  EmptyComponent.swift
//  Pets
//
//  Created by Yahya on 8/2/24.
//

import SwiftUI

struct EmptyComponent: UIComponent {
    
    let id = UUID()

    func render() -> AnyView {
        EmptyView()
            .toAnyView()
    }
}
