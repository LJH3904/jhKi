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
                
                pm.insertCard(front: "hello", back: "인사")
                
                try? pm.save()
                
            }
            
            Button("Fetch") {
                
                cards = (try? pm.fetchCards()) ?? []
                
            }
            
            List(cards, id: \.self) { card in
                
                VStack {
                    
                    Text(card.front)
                    
                    Text(card.back)
                    
                }
                
            }
            
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Deck.self, inMemory: true)
}
