//
//  ContentView.swift
//  Oetang
//
//  Created by Majapahit Wisisono on 01/05/24.
//

import SwiftUI

struct GroupsList: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .foregroundStyle(.mint.gradient.opacity(0.25))
                    //.foregroundColor(Color(red: 121/255, green: 156/255, blue: 118/255))
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    ForEach(Groups.sampleData, id: \.id) {group in
                        GroupCard(name: group.name, avatarId: group.avatarId, memberIds: group.memberIds)
                    }
                    Spacer()
                }
                .padding(.top)
            }
            .navigationTitle("Groups")
        }
    }
}

#Preview {
    GroupsList()
}
