//
//  PetDetailScreen.swift
//  Pets
//
//  Created by Yahya on 8/2/24.
//

import SwiftUI

struct PetDetailScreen: View {
    
    let petId: Int
    
    @StateObject private var vm: PetDetailViewModel
    
    init(
        petId: Int
    ) {
        self._vm = StateObject(wrappedValue: PetDetailViewModel(service: Webservice()))
        self.petId = petId
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(vm.components, id: \.id) { component in
                    component.render()
                }
            }
        }
        .task {
            await vm.load(petId: petId)
        }
    }
}

#Preview {
    PetDetailScreen(petId: 3)
}
