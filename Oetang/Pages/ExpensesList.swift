//
//  ExpensesList.swift
//  Oetang
//
//  Created by Majapahit Wisisono on 01/05/24.
//

import SwiftUI

struct ExpensesList: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .foregroundStyle(.mint.gradient.opacity(0.25))
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    ForEach(Expenses.sampleData, id: \.id) {group in
                        ExpenseCard()
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
