//
//  Customer.swift
//  BookStore
//
//  Created by 何進 on 2018/6/2.
//  Copyright © 2018年 何進. All rights reserved.
//

import UIKit

struct Customer {

    var firstName = ""
    var lastName = ""
    var addressLine1 = ""
    var addressLine2 = ""
    var city = ""
    var state = ""
    var zip = ""
    var phoneNumber = ""
    var emailAddress = ""
    var favoriteGenre = ""
    
    func listPurchaseHistory() -> [String] {
        return ["Purchase 1", "Purchase 2"]
    }
    
}
