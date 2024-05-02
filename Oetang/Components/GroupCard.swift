//
//  GroupCard.swift
//  Oetang
//
//  Created by Majapahit Wisisono on 01/05/24.
//

import SwiftUI

struct GroupCard: View {
    @State var name: String?
    @State var avatarId: Int?
    @State var memberIds: [Int]?
    
    var body: some View {
        GroupBox(label: Text(name ?? "Group Name"), content: {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(memberIds ?? [0,1,2,3], id: \.self) {member in
                        Image(systemName: Avatar.sampleData[Friends.sampleData[member].avatarId].image)
                            .frame(width: 25, height: 25)
                            .background(.secondary, in: Circle())
                    }
                }
            }
        })
        .groupBoxStyle(.groupBox)
    }
}

struct GroupCardGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .top, spacing: 20) {
            Image("boat")
                .resizable()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                configuration.label
                    .bold()
                    .foregroundColor(.pink)
                    .padding(.bottom)
                configuration.content
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 12))
        .padding(.horizontal)
    }
}

extension GroupBoxStyle where Self == GroupCardGroupBoxStyle {
    static var groupBox: GroupCardGroupBoxStyle {.init()}
}

#Preview {
    GroupCard()
}
