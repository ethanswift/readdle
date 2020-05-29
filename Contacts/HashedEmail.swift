//
//  HashedEmail.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import Foundation
import CryptoKit

class HashedEmail {
    var email: String
    init(email: String) {
        self.email = email
    }
    func MD5(string: String) -> String {
        let digest = Insecure.MD5.hash(data: string.data(using: .utf8) ?? Data())
        return digest.map{
            String(format: "%02hhx", $0)
        }.joined()
    }
}
