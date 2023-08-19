//
//  PersistenceController.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 14.07.2023.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "BudgetTracker")
    
    init() {
        print(container.managedObjectModel)
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
