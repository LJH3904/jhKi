//
//  CardRepository.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
// Repository → PersistenceManager → ModelContext → SwiftData Model

import SwiftData
import Foundation

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
    func fetchCards(in deck: Deck) throws -> [Card] {
        
        let deckId = deck.id
        
        let descriptor = FetchDescriptor<Card>(
            predicate: #Predicate { $0.deck?.id == deckId }
            /*
             Predicate 안에서는:
             * ❌ 복잡한 object graph 접근
             * ❌ optional chaining 일부 제한
             * ❌ 외부 객체 직접 참조 구조 제한
             */
        )
        
        return try context.fetch(descriptor)
    }
    func fetchDueCards() throws -> [Card] {
        let now = Date()
        
        let descriptor = FetchDescriptor<Card>(
            predicate: #Predicate { $0.nextReviewDate <= now }
        )
        
        return try context.fetch(descriptor)
    }
}
