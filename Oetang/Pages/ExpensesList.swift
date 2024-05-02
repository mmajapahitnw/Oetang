//
//  ExpensesList.swift
//  Oetang
//
//  Created by Majapahit Wisisono on 01/05/24.
//

import SwiftUI

struct ExpensesList: View {
    let expensesData = Expenses.sampleData
    
    @State private var newExpenseShown: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .foregroundStyle(.mint.gradient.opacity(0.25))
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    ForEach(Expenses.sampleData, id: \.id) {group in
                        ExpenseCard(name: group.name, amount: group.amount, date: group.date, avatarId: group.avatarId, payerId: group.payerId, beneficiariesId: group.beneficiariesId)
                    }
                    Spacer()
                }
                .padding(.top)
            }
            .navigationTitle("Expenses")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add Expense") {
                        newExpenseShown = true
                    }
                }
            }
        }
        .sheet(isPresented: $newExpenseShown) {
            newExpenseSheet()
        }
    }
}

#Preview {
    ExpensesList()
}
