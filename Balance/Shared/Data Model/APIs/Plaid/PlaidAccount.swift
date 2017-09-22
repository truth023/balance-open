//
//  PlaidAccount.swift
//  Balance
//
//  Created by Benjamin Baron on 7/14/17.
//  Copyright © 2017 Balanced Software, Inc. All rights reserved.
//

import Foundation

public struct PlaidAccount {
    
    public let accountId: String
    
    public let current: Double
    public let available: Double?
    public let limit: Double?
    
    // Last 4 digits of account number
    public let mask: String?
    
    public let name: String
    public let officialName: String?
    
    public let type: String
    public let subType: String?
    
    public init(account: [String: Any]) throws {
        accountId = try checkType(account["account_id"], name: "account_id")
        
        let balances: [String: Any] = try checkType(account["balances"], name: "balances")
        current = balances["current"] as? Double ?? 0.0
        available = balances["available"] as? Double
        limit = balances["limit"] as? Double
        
        mask = balances["mask"] as? String
        
        name = try checkType(account["name"], name: "name")
        officialName = account["official_name"] as? String
        
        type = try checkType(account["type"], name: "type")
        subType = account["subtype"] as? String
    }
}
