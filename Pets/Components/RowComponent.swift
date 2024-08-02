//
//  RowComponent.swift
//  Pets
//
//  Created by Yahya on 8/2/24.
//

import SwiftUI

struct RowComponent: UIComponent {
    
    let id = UUID()
    let uiModel: RowUIModel
    
    func render() -> AnyView {
        HStack(alignment: .top) {
            if let imageUrl = uiModel.imageUrl {
                AsyncImage(url: imageUrl) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                } placeholder: {
                    ProgressView()
                        .frame(width: 100, height: 100)
                        .background(.gray.gradient)
                }
                .clipShape(.rect(cornerRadius: 12))
            }
            
            VStack(alignment: .leading) {
                Text(uiModel.title)
                
                if let subTitle = uiModel.subTitle {
                    Text(subTitle)
                        .foregroundStyle(.secondary)
                }
                
                if let description = uiModel.description {
                    Text(description)
                        .lineLimit(2, reservesSpace: true)
                }
            }
        }
        .toAnyView()
    }
}
