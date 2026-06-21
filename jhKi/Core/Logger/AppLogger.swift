//
//  AppLogger.swift
//  jhKi
//
//  Created by LJh on 5/30/26.
//

import Foundation

enum LogLevel {
    case debug
    case error
    case info
}

final class AppLogger {

    static func log(
        _ message: String,
        level: LogLevel = .debug,
        file: String = #file,
        line: Int = #line
    ) {
        let fileName = (file as NSString).lastPathComponent

        switch level {
        case .debug:
            print("🟡 [DEBUG] \(fileName):\(line) - \(message)")
        case .error:
            print("🔴 [ERROR] \(fileName):\(line) - \(message)")
        case .info:
            print("🔵 [INFO] \(message)")
        }
    }
}
