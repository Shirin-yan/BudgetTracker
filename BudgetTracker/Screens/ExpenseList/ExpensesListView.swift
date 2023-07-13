//
//  ExpensesListView.swift
//  BudgetTracker
//
//  Created by Ширин Янгибаева on 13.07.2023.
//

import SwiftUI

struct ExpensesListView: View {
    @StateObject var vm: ExpensesListVM = ExpensesListVM()
    
    @State var search: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                HStack {
                    Text(LocalizedStringKey("Total expense for month: "))
                    +
                    Text(LocalizedStringKey("10 TMT"))
                }.lineLimit(2)
                    .padding(.horizontal, 100)
                    .font(.desc)
                    .foregroundColor(.secondaryText)
                    .multilineTextAlignment(.center)

                LazyVStack(spacing: 6) {
                    Section {
                        ForEach(0..<10) { i in
                            ExpenseItemView(data: Expense.example)
                                .background(Color.white)
                        }

                    } header: {
                        Text("date")
                            .font(.desc)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(Color.accentColor.opacity(0.1))
                    }
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.bg)
                .safeAreaInset(edge: .bottom, content: {
                    Spacer()
                        .frame(height: 100)
                })
                .overlay(alignment: .bottomTrailing, content: {
                    Button {
                        
                    } label: {
                        Image("add")
                            .renderingMode(.template)
                            .foregroundColor(.white)
                    }.frame(width: 60, height: 60)
                        .background(Color.accentColor)
                        .cornerRadius(30)
                        .padding(.trailing, 30)
                        .padding(.bottom, 30)
                    
                }).navigationTitle(LocalizedStringKey("Expenses"))
//                .navigationBarTitleDisplayMode(.large)
                .searchable(text: $search)
                .toolbar {
                    Button {
                        
                    } label: {
                        Image("filter")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.black)
                            .scaledToFit()
                            .frame(width: 32, height: 32)
                    }.frame(width: 40, height: 40)
                        .padding(.trailing, 10)
                }
        }.background(Color.bg)
    }
}

struct ExpensesListView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesListView()
    }
}
