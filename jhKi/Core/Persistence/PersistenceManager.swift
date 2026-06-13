//
//  Persistence.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
//  데이터베이스 초기화 / 컨테이너 관리
//  여기에서 각 repo에거 줄 DB를 생성해서 여러곳으로 쏨
//  ex) DeckRepository(context: PersistenceManager.shared.context)

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
