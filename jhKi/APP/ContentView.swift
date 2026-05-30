//
//  ContentView.swift
//  jhKi
//
//  Created by LJh on 5/26/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]

    var body: some View {
        VStack {
            
            Text("asd")
        }
    }
    
}

#Preview {
    ContentView()
        .modelContainer(for: Deck.self, inMemory: true)
}
