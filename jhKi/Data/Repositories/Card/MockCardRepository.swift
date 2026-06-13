//
//  MockCardRepository.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
//

import Foundation

final class MockCardRepository:
    CardRepositoryProtocol {
    func create(front: String, reading: String, meaning: String) throws {
        
    }
    
    func fetchAll() throws -> [Card] {
        [
            Card(front: "s", reading: "a", meaning: "a")
        ]
    }
    
    func update(_ card: Card) throws {
        
    }
    
    func delete(_ card: Card) throws {
        
    }
    

    
}
