//
//  UIComponent.swift
//  Pets
//
//  Created by Yahya on 7/30/24.
//

import SwiftUI

protocol UIComponent {
    
    var id: UUID { get }
    
    func render() -> AnyView
}
