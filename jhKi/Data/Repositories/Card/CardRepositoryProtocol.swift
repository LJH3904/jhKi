//
//  CardRepositoryProtocol.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
//

import Foundation

protocol CardRepositoryProtocol {
    func create(
        front: String,
        back: String
    )
    func fetchAll() throws -> [Card]
    func update(_ card: Card) throws
    func delete(_ card: Card) throws
}
