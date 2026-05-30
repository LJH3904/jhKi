//
//  AppLogger.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
//

import Foundation
import OSLog

enum AppLogger {
    private static let subSystem = Bundle.main.bundleIdentifier ?? "com.jhki.app"
    static let persistence = Logger(
        subsystem: subSystem, category: "Persistence"
    )
    static let network = Logger(
        subsystem: subSystem, category: "Network"
    )
    static let ui = Logger(
        subsystem: subSystem, category: "UI"
    )
}
