//
//  ExpenseItemView.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 13.07.2023.
//

import SwiftUI

struct ExpenseItemView: View {
    var data: Expense
    
    var body: some View {
        HStack {
            Color(data.tag?.color ?? "AccentColor")
                .frame(width: 20)

            VStack {
                Text(data.tag?.name ?? "")
                    .lineLimit(1)
                    .font(.desc)
                    .foregroundColor(.secondaryText)
                    .frame(maxWidth: .infinity, alignment: .leading)


                Text(data.name ?? "")
                    .lineLimit(1)
                    .font(.name)
                    .foregroundColor(.text)
                    .frame(maxWidth: .infinity, alignment: .leading)


                Text(data.desc ?? "")
                    .lineLimit(2)
                    .font(.desc)
                    .foregroundColor(.secondaryText)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }.padding(.vertical, 16)

            Text("-\(data.amount) TMT")
                .lineLimit(2)
                .font(.header)
                .foregroundColor(.expenseRed)

        }.padding(.trailing, 20)
            .padding(.leading, 4)
            .background(Color.white)
    }
}

struct ExpenseItemView_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseItemView(data: Expense.example)
    }
}
