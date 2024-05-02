//
//  Models.swift
//  Oetang
//
//  Created by Majapahit Wisisono on 02/05/24.
//

import Foundation

func formatDate(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM dd, yyyy"
        return dateFormatter.string(from: date)
    }

func inputDate(dateString: String) -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"

    // Use the DateFormatter to convert the string to a Date object
    guard let specificDate = dateFormatter.date(from: dateString) else {
        fatalError("Invalid date format")
    }
    
    return specificDate
}
