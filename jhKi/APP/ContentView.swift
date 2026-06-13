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
    let pm = PersistenceManager.shared
    @State private var cards: [Card] = []
    
    var body: some View {
        VStack {
            Button("Create") {
                
            }
            
            Button("Fetch") {
                
            }
            
            List(cards, id: \.self) { card in
                
            }
            
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Deck.self, inMemory: true)
}
