//
//  MockCardRepository.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
//

import Foundation

final class MockCardRepository:
    CardRepositoryProtocol {
    
    func create(front: String, back: String) {
        
    }
    
    func fetchAll() throws -> [Card] {
        [
            Card(
                front: "Apple",
                back: "りんご"
            ),
            Card(
                front: "Banana",
                back: "バナナ"
            )
        ]
    }
    
    func update(_ card: Card) throws {
        
    }
    
    func delete(_ card: Card) throws {
        
    }
    

    
}
