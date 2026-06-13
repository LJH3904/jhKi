//
//  DeckRepositoryProtocol.swift
//  jhKi
//
//  Created by LJh on 6/13/26.
//

import Foundation

protocol DeckRepositoryProtocol {

    func create(name: String) throws

    func fetchAll() throws -> [Deck]

    func update(_ deck: Deck) throws

    func delete(_ deck: Deck) throws
}

