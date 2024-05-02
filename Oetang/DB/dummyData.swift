//
//  dummyData.swift
//  Oetang
//
//  Created by Majapahit Wisisono on 01/05/24.
//

import Foundation
import SwiftUI

struct Avatar {
    var image: String
}

extension Avatar {
    static let sampleData: [Avatar] =
    [
        Avatar(image: "man"),
        Avatar(image: "man-2"),
        Avatar(image: "man-3"),
        Avatar(image: "man-4"),
        Avatar(image: "woman"),
        Avatar(image: "woman-2"),
        Avatar(image: "woman-3")
    ]
}

struct GroupIcon {
    var image: String
}

extension GroupIcon {
    static let sampleData: [GroupIcon] =
    [
        GroupIcon(image: "boat"),
        GroupIcon(image: "chicken"),
        GroupIcon(image: "fish"),
        GroupIcon(image: "fox"),
        GroupIcon(image: "heart"),
        GroupIcon(image: "penguin"),
        GroupIcon(image: "shuriken")
    ]
}

struct ExpenseIcon {
    var image: String
}

extension ExpenseIcon {
    static let sampleData: [ExpenseIcon] =
    [
        ExpenseIcon(image: "eat"),
        ExpenseIcon(image: "cinema"),
        ExpenseIcon(image: "coffee"),
        ExpenseIcon(image: "milkshake"),
        ExpenseIcon(image: "sandwich"),
        ExpenseIcon(image: "billiard"),
        ExpenseIcon(image: "karaoke")
    ]
}

struct Friends {
    var id: Int
    var name: String
    var avatarId: Int
}

extension Friends {
    static let sampleData: [Friends] =
    [
        Friends(id: 0, name: "You", avatarId: 0),
        Friends(id: 1, name: "Teny", avatarId: 4),
        Friends(id: 2, name: "Andy", avatarId: 1),
        Friends(id: 3, name: "Chaki", avatarId: 5),
        Friends(id: 4, name: "Nunun", avatarId: 6),
        Friends(id: 5, name: "Hibush", avatarId: 2),
        Friends(id: 6, name: "Ucup", avatarId: 3)
    ]
}

struct Groups {
    var id: Int
    var name: String
    var avatarId: Int
    var memberIds: [Int]
}

extension Groups {
    static let sampleData: [Groups] =
    [
        Groups(id: 1, name: "SOLID", avatarId: 0, memberIds: [0, 1, 2, 3, 4, 5, 6]),
        Groups(id: 2, name: "Wira Wiri", avatarId: 1, memberIds: [0, 1, 2, 3]),
        Groups(id: 3, name: "Clang", avatarId: 2, memberIds: [0, 4, 5, 6])
    ]
}

struct Expenses {
    var id: Int
    var name: String
    var amount: Int
    var date: Date
    var avatarId: Int
    var groupId: Int
    var payerId: Int
    var beneficiariesId: [Int]
}

extension Expenses {
    static let sampleData: [Expenses] =
    [
        Expenses(
            id: 1, 
            name: "tepok bulu",
            amount: 200000,
            date: inputDate(dateString: "2024-04-01"),
            avatarId: 0,
            groupId: 1,
            payerId: 6,
            beneficiariesId: [0,1,2,3,4,5,6]
        ),
        Expenses(id: 2, name: "djiwa jawa", amount: 250000,
                 date: inputDate(dateString: "2024-04-01"),
                 avatarId: 0, groupId: 1, payerId: 1, beneficiariesId: [0,1,2,3,4]),
        Expenses(id: 3, name: "AWOR", amount: 150000, date: inputDate(dateString: "2024-04-02"), avatarId: 0, groupId: 1, payerId: 5, beneficiariesId: [0,1,2,3,5]),
        Expenses(id: 4, name: "Tepok bulu", amount: 175000, date: inputDate(dateString: "2024-04-03"), avatarId: 0, groupId: 1, payerId: 0, beneficiariesId: [0,1,2,3,4,6]),
        Expenses(id: 5, name: "Barelo", amount: 300000, date: inputDate(dateString: "2024-04-04"), avatarId: 0, groupId: 1, payerId: 3, beneficiariesId: [0,1,2,3,4,5,6])
    ]
}
