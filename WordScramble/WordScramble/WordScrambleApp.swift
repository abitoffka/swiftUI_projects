//
//  WordScrambleApp.swift
//  WordScramble
//
//  Created by Aigerim Abitayeva on 14.05.2023.
//

import SwiftUI

@main
struct WordScrambleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
