//
//  RatingView.swift
//  Pets
//
//  Created by Yahya on 8/2/24.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int?
    let imageName: String
    let fillImageName: String
    
    init(
        rating: Binding<Int?>,
        imageName: String = "star",
        fillImageName: String = "star.fill"
    ) {
        self._rating = rating
        self.imageName = imageName
        self.fillImageName = fillImageName
    }
    
    var body: some View {
        HStack {
            ForEach(0..<5, id: \.self) { index in
                Image(systemName: starType(index: index))
                    .foregroundStyle(.yellow)
            }
        }
    }
    
    private func starType(index: Int) -> String {
        if let rating = rating {
            return index < rating ? fillImageName : imageName
        }
        
        return imageName
    }
}

#Preview {
    RatingView(
        rating: .constant(4)
    )
}

#Preview {
    RatingView(
        rating: .constant(4),
        imageName: "heart",
        fillImageName: "heart.fill"
    )
}
