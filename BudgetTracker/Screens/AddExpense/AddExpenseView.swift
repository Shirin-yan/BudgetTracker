//
//  AddExpenseView.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 15.07.2023.
//

import SwiftUI

struct AddExpenseView: View {
    
    @State var tag: Tag?
    @State var name = ""
    @State var desc = ""
    @State var amount = ""
    @State var date: Date = Date.now
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }.frame(width: 40, height: 40)
                    
                    Text(LocalizedStringKey("Add Expense"))
                        .font(.name)
                        .foregroundColor(.black)
                    
                    Spacer()
                }
            }
        }
    }
}

struct AddExpenseView_Previews: PreviewProvider {
    static var previews: some View {
        AddExpenseView()
    }
}
