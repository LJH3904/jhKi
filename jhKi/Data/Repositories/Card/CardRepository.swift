//
//  CardRepository.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
// Repository → PersistenceManager → ModelContext → SwiftData Model

import SwiftData

final class CardRepository: CardRepositoryProtocol {
    
    private let context: ModelContext
    
    init(context: ModelContext) {
        self.context = context
        /*
         let repo = CardRepository(
             context: PersistenceManager.shared.context
         )
         이런식으로 생성
         */
    }
    
    func create(front: String, reading: String, meaning: String) throws {
        let card = Card(
            front: front,
            reading: reading,
            meaning: meaning
        )
        context.insert(card)
        try context.save()
    }
    
    func fetchAll() throws -> [Card] {
        let descriptor = FetchDescriptor<Card>()
        return try context.fetch(descriptor)
    }
    
    func update(_ card: Card) throws {
        // SwiftData tracks changes automatically for managed models.
        // Ensure persistence by saving context.
        try context.save()
    }
    
    func delete(_ card: Card) throws {
        context.delete(card)
        try context.save()
    }
}
