//
//  ContentView.swift
//  Pets
//
//  Created by Yahya on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm: PetListViewModel
    
    init() {
        self._vm = StateObject(wrappedValue: PetListViewModel(service:  Webservice()))
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.components, id: \.id) { component in
                    component.render()
                }
            }
            .navigationTitle("Pets")
            .listStyle(.plain)
        }
        .task {
            await vm.load()
        }
    }
}

#Preview {
    ContentView()
}
