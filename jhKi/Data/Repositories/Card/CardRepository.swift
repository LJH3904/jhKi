//
//  CardRepository.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
//

import SwiftData

final class CardRepository: CardRepositoryProtocol {
    
    private let persistenceManager: PersistenceManager
    
    init(persistenceManager: PersistenceManager) {
        self.persistenceManager = persistenceManager
    }
    
    func create(front: String, back: String) {
        
    }
    
    func fetchAll() throws -> [Card] {
        return []
    }
    
    func update(_ card: Card) throws {
        
    }
    
    func delete(_ card: Card) throws {
        
    }
    
    
    
}
