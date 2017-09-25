//
//  EtherscanInstitution.swift
//  BalancemacOS
//
//  Created by Raimon Lapuente Ferran on 06/09/2017.
//  Copyright © 2017 Balanced Software, Inc. All rights reserved.
//

import Foundation

class EthplorerInstitution: ApiInstitution {
    let source: Source = .wallet
    let sourceInstitutionId: String = ""
    
    var currencyCode: String = ""
    var usernameLabel: String = ""
    var passwordLabel: String = ""
    var name: String = "Wallet"
    var products: [String] = []
    var type: String = ""
    var url: String? = "https://ethplorer.io"
    var fields: [Field]
    
    init() {
        let addressField = Field(name: "Address", label: "Address", type: "address", value: nil)
        let nameField = Field(name: "Address Name", label: "Address Name", type: "name", value: nil)
        self.fields = [nameField, addressField]
    }
}
