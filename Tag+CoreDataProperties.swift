//
//  Tag+CoreDataProperties.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 14.07.2023.
//
//

import Foundation
import CoreData


extension Tag {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tag> {
        return NSFetchRequest<Tag>(entityName: "Tag")
    }

    @NSManaged public var id: Int64
    @NSManaged public var name: String?
    @NSManaged public var color: String?
    @NSManaged public var tagToExpense: NSSet?

}

// MARK: Generated accessors for tagToExpense
extension Tag {

    @objc(addTagToExpenseObject:)
    @NSManaged public func addToTagToExpense(_ value: Expense)

    @objc(removeTagToExpenseObject:)
    @NSManaged public func removeFromTagToExpense(_ value: Expense)

    @objc(addTagToExpense:)
    @NSManaged public func addToTagToExpense(_ values: NSSet)

    @objc(removeTagToExpense:)
    @NSManaged public func removeFromTagToExpense(_ values: NSSet)

}

extension Tag : Identifiable {

}
