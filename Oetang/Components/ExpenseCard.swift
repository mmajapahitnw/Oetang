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
    @State var date: Date?
    @State var avatarId: Int?
    @State var groupId: Int?
    @State var payerId: Int?
    @State var beneficiariesId: [Int]?
    
    var body: some View {
        let tanggal = date ?? inputDate(dateString: "2000-1-1")
        
        GroupBox {
            HStack {
                Image(ExpenseIcon.sampleData[avatarId ?? 0].image)
                    .resizable()
                    .frame(width: 50, height: 50)
                
                VStack(alignment: .leading) {
                    Text(name ?? "Expense Title")
                        .font(.subheadline.bold())
                        .foregroundStyle(.primary)
                    Text(formatDate(date: tanggal))
                        .font(.caption2)
                        .foregroundStyle(.secondary)
                    
                    
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(beneficiariesId ?? [0,1,2,3], id: \.self) {member in
                                Image(Avatar.sampleData[Friends.sampleData[member].avatarId].image)
                                    .resizable()
                                    .frame(width: 25, height: 25)
                            }
                        }
                    }
                    .scrollIndicators(.hidden)
                }
                
                VStack {
                    Text(Friends.sampleData[payerId ?? 0].name)
                        .font(.caption.weight(.semibold))
                        .foregroundColor(.secondary)
                    Text(amount ?? 0, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .font(.subheadline.bold())
                        .multilineTextAlignment(.center)
                        .foregroundColor(.teal)
                }
                .frame(maxWidth: 75)
            }
        }
        .padding(.horizontal)
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
