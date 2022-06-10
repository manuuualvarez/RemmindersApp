//
//  MyTaskManagerApp.swift
//  MyTaskManager
//
//  Created by Manny Alvarez on 10/06/2022.
//

import SwiftUI

@main
struct MyTaskManagerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
