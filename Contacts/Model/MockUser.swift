//
//  MockUser.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class MockUser {
    // preferably get the hash from HashedEmail class which has been created in HashedEmail.swift
    // and turn an account email into hash
    let mockUserEmail = ""
    let mockUserHash = "205e460b479e2e5b48aec07710c08d50"
    
    var mockUsers: Array<User>?
    
    func generateMockUser () -> Array<User> {
        var users: Array<User> = []
        for i in 0..<50 {
            let user = User(email: "ethan.lebens.\(i)@example.com", name: "Ethan Lebens \(i)", online: true, avatar: " image url ")
            users.append(user)
        }
        return users
    }
}
