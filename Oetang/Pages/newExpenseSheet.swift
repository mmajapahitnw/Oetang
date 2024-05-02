//
//  newExpenseSheet.swift
//  Oetang
//
//  Created by Majapahit Wisisono on 02/05/24.
//
import Foundation
import SwiftUI

struct newExpenseSheet: View {
    @State private var expenseTitle: String = ""
    @State private var expenseAmount: Int?
    @State private var memberIds: [Int]?
    @State private var payerId: Int = 0
    @State private var beneficiariesId: [Int] = []
//    private var beneficiariesStatus: [Int: Bool] {
//        var dictionary: [Int: Bool] = [:]
//        for id in 0..<(memberIds?.count ?? 1) {
//            dictionary.updateValue(false, forKey: id)
//        }
//        return dictionary
    //}
    
//    @State private var beneficiariesStatus: [String: Bool] =
//    [
//        "maja": false,
//        "andy": false,
//        "teny": false,
//        "chaki": false
//    ]
    
    @State private var checkIsOn: Bool = false
    
    var body: some View {
        let members = memberIds ?? [0,1,2,3,4,5,6]
        
        Form {
            Section("Title") {
                TextField("Expense Title", text: $expenseTitle)
            }
            
            Section("Amount") {
                TextField("amount", value: $expenseAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
            
            Section("Payer") {
                Picker("payer", selection: $payerId) {
                    ForEach(members, id: \.self) { member in
                        //                        HStack {
                        //                            Text(Friends.sampleData[member].name)
                        //                            Image(Avatar.sampleData[member].image)
                        //                                .resizable()
                        //                                .aspectRatio(contentMode: .fit)
                        //                                .frame(width: 20, height: 20)
                        //                        }
                        Text(Friends.sampleData[member].name)
                            .tag(member)
                    }
                }
            }
            .frame(maxHeight: 30)
            
            Button("print") {
                print(payerId)
            }
            
            
            }
        
    }
}

#Preview {
    newExpenseSheet()
}
