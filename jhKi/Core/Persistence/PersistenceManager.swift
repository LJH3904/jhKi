//
//  Persistence.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
//

import SwiftData
import OSLog

final class PersistenceManager {
    static let shared = PersistenceManager()
    
    let container: ModelContainer
    
    var context: ModelContext {
        container.mainContext
    }
    
    private init() {
        let schema = Schema(
            [
                Card.self,
                Deck.self
            ])
        let configuration = ModelConfiguration(
            schema: schema,
            isStoredInMemoryOnly: false
        )
        
        do {
            self.container = try ModelContainer(
                for: schema,
                configurations: configuration
            )
            AppLogger.persistence.info(
                "ModelContainer initialized successfully"
            )
        } catch {
            AppLogger.persistence.fault(
                "Failed to create ModelContainer: \(error.localizedDescription)"
            )
            
            let persistenceError =
            PersistenceError.containerCreationFailed(error)
            
            fatalError(
                persistenceError.errorDescription ?? "Unknown Error"
            )
        }
        
    }
    func fetchCards() throws -> [Card] {
        let descriptor = FetchDescriptor<Card>()
        return try context.fetch(descriptor)
    }
    
    func insertCard(front: String, back: String) {
        let card = Card(front: front, back: back)
        context.insert(card)
    }
    
    func deleteCard(_ card: Card) {
        context.delete(card)
    }
    
    func save() throws {
        try context.save()
    }
}
