//
//  CarouselView.swift
//  Pets
//
//  Created by Yahya on 7/31/24.
//

import SwiftUI

struct CarouselView: View {
    
    let uiModel: CarouselUIModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack {
                
                ForEach(uiModel.items) { item in
                    
                    Navigator.perform(
                        action: uiModel.action,
                        payload: item
                    ) {
                        AsyncImage(url: item.imageUrl) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 200)
                        } placeholder: {
                            ProgressView()
                                .frame(width: 200, height: 200)
                                .background(.gray.gradient)
                        }
                        .clipShape(.rect(cornerRadius: 12))
                    }
                }
            }
        }
    }
}

#Preview {
    CarouselView(
        uiModel: CarouselUIModel(
            items: ["https://images.unsplash.com/photo-1589883661923-6476cb0ae9f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2574&q=80",
                        "https://images.unsplash.com/photo-1596854407944-bf87f6fdd49e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80",
                        "https://images.unsplash.com/photo-1529257414772-1960b7bea4eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                        "https://images.unsplash.com/photo-1491485880348-85d48a9e5312?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                        "https://images.unsplash.com/photo-1533743983669-94fa5c4338ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1392&q=80"].map {
                            e in CarouselRowUIModel(petId: 1, imageUrl: URL(string: e)!)
                        },
            action: Action(
                type: .sheet,
                destination: .petDetail
            )
        )
    )
}
