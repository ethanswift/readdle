//
//  User.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import Foundation

struct User: Codable {
    var email: String?
    var name: String?
    var online: Bool?
    var avatar: String?
    enum CodingKeys: String, CodingKey {
        case email
        case name
        case online
        case avatar 
    }
}
