//
//  DeckRepository.swift
//  jhKi
//
//  Created by LJh on 6/13/26.
//

import Foundation
import SwiftData

final class DeckRepository: DeckRepositoryProtocol {
    private let context: ModelContext
    
    init(context: ModelContext) {
        self.context = context
    }
    
    func create(name: String) throws {
        let deck = Deck(name: name)
        context.insert(deck)
        try context.save()
    }
    
    func fetchAll() throws -> [Deck] {
        let descriptor = FetchDescriptor<Deck>()
        return try context.fetch(descriptor)
    }
    
    func update(_ deck: Deck) throws {
       try context.save()
    }
    
    func delete(_ deck: Deck) throws {
        context.delete(deck)
        try context.save()
    }
    
    
}
