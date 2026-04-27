//
//  SwiftUiApp.swift
//  SwiftUi
//
//  Created by Thongpop choojit on 27/4/2569 BE.
//

import SwiftUI

@main
struct SwiftUiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
