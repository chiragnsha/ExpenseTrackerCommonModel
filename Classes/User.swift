//
//  User.swift
//  ExpenseTrackerApp
//
//  Created by Chirag N Shah on 10/08/19.
//  Copyright © 2019 Chirag N Shah. All rights reserved.
//

import Foundation

public struct User {
    let ID: UUID
    let name: String
}

extension User: Equatable, Hashable {
    public static func == (lhs: User, rhs: User) -> Bool {
        return lhs.ID == rhs.ID
    }
}
