//
//  Navigator.swift
//  Pets
//
//  Created by Yahya on 7/31/24.
//

import SwiftUI

struct SheetView<V: View>: View {
    @State private var isPresented: Bool = false
    let content: () -> V
    let destinationView: AnyView
    
    var body: some View {
        content()
            .onTapGesture {
                isPresented = true
            }
            .sheet(isPresented: $isPresented) {
                destinationView
            }
    }
}

class Navigator {
    static func perform<V: View>(
        action: Action,
        payload: Any? = nil,
        content: @escaping () -> V
    ) -> AnyView {
        
        var destination: AnyView!
        
        switch action.destination {
        case .petDetail:
            if let payload = payload as? CarouselRowUIModel {
                destination = PetDetailScreen(petId: payload.petId).toAnyView()
            }
            
            else if let payload = payload as? RowUIModel {
                destination = PetDetailScreen(petId: payload.id)
                    .navigationTitle(payload.title)
                    .toAnyView()
            }
            
            else {
                destination = Text("Pre Detail").toAnyView()
            }
        }
        
        switch action.type {
        case .sheet:
            return SheetView(
                content: content,
                destinationView: destination
            ).toAnyView()
        case .push:
            return NavigationLink {
                destination
            } label: {
                content()
            }.toAnyView()
        }
    }
}
