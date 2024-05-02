//
//  CheckBox.swift
//  Oetang
//
//  Created by Majapahit Wisisono on 02/05/24.
//

import SwiftUI

struct CheckBox: View {
    let title: String
    @Binding var isChecked: Bool
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 24, height: 24)
                .onTapGesture {
                    self.isChecked.toggle()
                }
        }
    }
}
