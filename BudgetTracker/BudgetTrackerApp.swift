//
//  BudgetTrackerApp.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 13.07.2023.
//

import SwiftUI

@main
struct BudgetTrackerApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            TabbarView()
                .preferredColorScheme(.light)
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
