//
//  ExpenseCard.swift
//  Oetang
//
//  Created by Majapahit Wisisono on 01/05/24.
//

import SwiftUI

struct ExpenseCard: View {
    @State var id: Int?
    @State var name: String?
    @State var amount: Int?
    @State var date: [Int]?
    @State var avatarId: Int?
    @State var groupId: Int?
    @State var payerId: Int?
    @State var beneficiariesId: [Int]?
    
    var body: some View {
        let tanggal = date ?? [0,0,0000,0,0]
        //let beneficiaries = beneficiariesId ?? [0,1,2,3]
        
        GroupBox {
            HStack {
                Image(systemName: ExpenseIcon.sampleData[avatarId ?? 0].image)
                    .frame(width: 50, height: 50)
                    .scaledToFit()
                    .background(.secondary, in: RoundedRectangle(cornerRadius: 10))
                
                VStack(alignment: .leading) {
                    Text(name ?? "Expense Title")
                    Text("\(tanggal[0])-\(tanggal[1])-\(tanggal[2])")
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(beneficiariesId ?? [0,1,2,3], id: \.self) {member in
                                Image(systemName: Avatar.sampleData[Friends.sampleData[member].avatarId].image)
                            }
                        }
                    }
                }
                
                VStack {
                    Text(Friends.sampleData[payerId ?? 0].name)
                    Text(amount ?? 0, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
                
                Spacer()
            }
        }
        //.padding(.horizontal)
    }
}

//struct ExpenseCardGroupBoxStyle: GroupBoxStyle {
//    func makeBody(configuration: Configuration) -> some View {
//        HStack(alignment: .top, spacing: 20) {
//            Image(systemName: "person")
//                .frame(width: 50, height: 50)
//                .scaledToFit()
//                .background(.secondary, in: RoundedRectangle(cornerRadius: 10))
//            VStack(alignment: .leading) {
//                configuration.label
//                    .bold()
//                    .foregroundColor(.pink)
//                    .padding(.bottom)
//                configuration.content
//            }
//            Spacer()
//        }
//        .padding()
//        .frame(maxWidth: .infinity)
//        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 12))
//        .padding(.horizontal)
//    }
//}
//
//extension GroupBoxStyle where Self == ExpenseCardGroupBoxStyle {
//    static var expenseBox: ExpenseCardGroupBoxStyle {.init()}
//}


#Preview {
    ExpenseCard()
}
