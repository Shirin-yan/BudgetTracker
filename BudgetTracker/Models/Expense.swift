//
//  Expense.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 13.07.2023.
//

import Foundation

struct Expense: Identifiable {
    var id: Int
    var tag: Tag
    var name: String
    var desc: String
    var date: Date
    var amount: Int
    
    static let example = Expense(id: 1, tag: Tag.example, name: "Expense name", desc: "Expense desc goes here", date: Date.now, amount: 100)
}
