//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Aigerim Abitayeva on 27.05.2023.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
