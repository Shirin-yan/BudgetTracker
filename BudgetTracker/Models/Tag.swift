//
//  Tag.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 13.07.2023.
//

import Foundation

struct Tag: Identifiable {
    var id: Int
    var name: String
    var color: String
    
    static var example = Tag(id: 1, name: "Tag nameee", color: "1")
}
