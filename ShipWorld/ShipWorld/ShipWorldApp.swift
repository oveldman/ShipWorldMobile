//
//  ShipWorldApp.swift
//  ShipWorld
//
//  Created by Oscar Veldman on 19/02/2022.
//

import SwiftUI

@main
struct ShipWorldApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
