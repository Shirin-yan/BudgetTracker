//
//  ContentView.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 13.07.2023.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            ExpensesListView().tabItem {
                Label {
                    Text(LocalizedStringKey("Expenses"))
                } icon: {
                    Image("expenses")
                        .renderingMode(.template)
                }
            }
            
            IncomesListView().tabItem {
                Label {
                    Text(LocalizedStringKey("Incomes"))
                } icon: {
                    Image("wallet")
                        .renderingMode(.template)
                    
                }
                
            }
            
            SavingsListView().tabItem {
                Label {
                    Text(LocalizedStringKey("Savings"))
                } icon: {
                    Image("savings")
                        .renderingMode(.template)
                    
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
