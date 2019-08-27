//
//  Expense.swift
//  ExpenseTrackerApp
//
//  Created by Chirag N Shah on 10/08/19.
//  Copyright © 2019 Chirag N Shah. All rights reserved.
//

import Foundation

public struct Expense {
    let expenseID: UUID = UUID()
    
    var expenseName: String
    var expenseAmount: Double
    
    var payee: User
    var involvedUsers: Set<User>
}

extension Expense: Equatable, Hashable {
    public static func == (lhs: Expense, rhs: Expense) -> Bool {
        return lhs.expenseID == rhs.expenseID
    }
}

extension Expense {
    func involvesuser(_ user: User) -> Bool {
        return (self.payee == user) || self.involvedUsers.contains(user)
    }
}
