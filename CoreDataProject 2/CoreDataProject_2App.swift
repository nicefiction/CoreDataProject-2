//
//  CoreDataProject_2App.swift
//  CoreDataProject 2
//
//  Created by Olivier Van hamme on 01/08/2021.
//

import SwiftUI

@main
struct CoreDataProject_2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
