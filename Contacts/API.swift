//
//  Avatar.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class API {
    var apiUser: User?
    init() {
    }
    func retrieveData() -> User {
        var user: User?
            let mockUser = MockUser()
            let hash = mockUser.mockUserHash
            let url = URL(string: "https://www.gravatar.com/\(hash).json")
        do {
            let contents = try String(contentsOf: url!, encoding: .utf8)
            let data = contents.data(using: .utf8)
            let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: Any]
            let entry = json["entry"] as! [Any]
            let entryJSON = entry[0] as! [String: Any]
            let displayName = entryJSON["displayName"] as! String
            let avatarUrl = "https://secure.gravatar.com/avatar/\(hash)"
            let retrievedUser = User(email: "Beau.Lebens@example.com", name: displayName, online: true, avatar: avatarUrl)
            user = retrievedUser
            self.apiUser = user
        } catch {
            print(error)
        }
        return user!
    }
}
