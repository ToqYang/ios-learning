//
//  CoreDataTestApp.swift
//  CoreDataTest
//
//  Created by Santiago Toquica Yanguas on 12/01/24.
//

import SwiftUI

@main
struct CoreDataTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
