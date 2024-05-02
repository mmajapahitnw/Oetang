//
//  ExpensesList.swift
//  Oetang
//
//  Created by Majapahit Wisisono on 01/05/24.
//

import SwiftUI

struct ExpensesList: View {
    let expensesData = Expenses.sampleData
    
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
        }
    }
}

#Preview {
    ExpensesList()
}
