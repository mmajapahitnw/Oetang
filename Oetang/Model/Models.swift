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
