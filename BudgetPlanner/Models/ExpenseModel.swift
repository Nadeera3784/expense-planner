//
//  Expense.swift
//  BudgetPlanner
//
//  Created by Nadeera Sampath on 2023-09-12.
//

import SwiftUI

struct ExpenseModel: Identifiable,Hashable{
    var id = UUID().uuidString
    var remark: String
    var amount: Double
    var date: Date
    var type: ExpenseType
    var color: String
}

enum ExpenseType: String{
    case income = "Income"
    case expense = "expenses"
    case all = "ALL"
}

var sample_expenses: [ExpenseModel] = [
    ExpenseModel(remark: "Magic Keyboard", amount: 99, date: Date(timeIntervalSince1970: 1652987245), type: .expense, color: "Yellow"),
    ExpenseModel(remark: "Food", amount: 19, date: Date(timeIntervalSince1970: 1652814445), type: .expense, color: "Red"),
    ExpenseModel(remark: "Magic Trackpad", amount: 99, date: Date(timeIntervalSince1970: 1652382445), type: .expense, color: "Purple"),
    ExpenseModel(remark: "Uber Cab", amount: 20, date: Date(timeIntervalSince1970: 1652296045), type: .expense, color: "Green"),
    ExpenseModel(remark: "Amazon Purchase", amount: 299, date: Date(timeIntervalSince1970: 1652209645), type: .expense, color: "Yellow"),
    ExpenseModel(remark: "Stocks", amount: 2599, date: Date(timeIntervalSince1970: 1652036845), type: .income, color: "Purple"),
    ExpenseModel(remark: "In App Purchase", amount: 499, date: Date(timeIntervalSince1970: 1651864045), type: .income, color: "Red"),
    ExpenseModel(remark: "Movie Ticket", amount: 99, date: Date(timeIntervalSince1970: 1651691245), type: .expense, color: "Yellow"),
    ExpenseModel(remark: "Apple Music", amount: 25, date: Date(timeIntervalSince1970: 1651518445), type: .expense, color: "Green"),
    ExpenseModel(remark: "Snacks", amount: 49, date: Date(timeIntervalSince1970: 1651432045), type: .expense, color: "Purple"),
]
