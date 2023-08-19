//
//  Expense+CoreDataProperties.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 14.07.2023.
//
//

import Foundation
import CoreData


extension Expense {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }

    @NSManaged public var id: Int64
    @NSManaged public var name: String?
    @NSManaged public var desc: String?
    @NSManaged public var amount: Int64
    @NSManaged public var date: Date?
    @NSManaged public var type: String?
    @NSManaged public var tag: Tag?

}

extension Expense : Identifiable {

}
