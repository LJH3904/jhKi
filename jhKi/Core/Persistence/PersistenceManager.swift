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
        let schema = Schema([Card.self, Deck.self])
        let configuration = ModelConfiguration(schema: schema)

        self.container = try! ModelContainer(for: schema, configurations: configuration)
    }
}
