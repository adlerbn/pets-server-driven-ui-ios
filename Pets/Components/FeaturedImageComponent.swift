//
//  FeaturedImageComponent.swift
//  Pets
//
//  Created by Yahya on 7/30/24.
//

import SwiftUI

struct FeaturedImageComponent: UIComponent {
    
    let id = UUID()
    let uiModel: FeaturedImageUIModel
    
    func render() -> AnyView {
        AsyncImage(url: uiModel.imageUrl) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        } placeholder: {
            ProgressView()
                .frame(
                    maxWidth: .infinity,
                    minHeight: 200,
                    maxHeight: 200
                )
                .background(.gray.gradient)
        }
        .clipShape(.rect(cornerRadius: 12))
        .toAnyView()
    }
}
