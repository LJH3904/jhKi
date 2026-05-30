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
    
    
    private init() {
        let schema = Schema(
            [
                Card.self,
                Deck.self
            ])
        let configuration = ModelConfiguration(
            schema: schema,
            isStoredInMemoryOnly: false
        )
        
        do {
            self.container = try ModelContainer(
                for: schema,
                configurations: configuration
            )
            AppLogger.persistence.info(
                "ModelContainer initialized successfully"
            )
        } catch {
            AppLogger.persistence.fault(
                "Failed to create ModelContainer: \(error.localizedDescription)"
            )
            
            let persistenceError =
            PersistenceError.containerCreationFailed(error)
            
            fatalError(
                persistenceError.errorDescription ?? "Unknown Error"
            )
        }
        
    }
}
