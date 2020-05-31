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
    // retrieve data from Gravatar API
    func retrieveDataFromAPI() -> User {
        var user: User? = nil
        let url = "Gravatar API endpoints"
        let reqURL = URL(fileURLWithPath: url)
        var request = URLRequest(url: reqURL)
        request.httpMethod = "GET"
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let task = session.dataTask(with: request) { (data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: []) as! Dictionary<String, Any>
                let retrievedUser = User()
                user = retrievedUser
            } catch {
                print(error)
            }
        }
        task.resume()
        return user!
    }
    
    func retrieveData() {
//        var user: User?
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
            let avatarUrl = "https://www.gravatar.com/avatar/\(hash).jpg"
            let retrievedUser = User(email: "Beau.Lebens@example.com", name: displayName, online: true, avatar: avatarUrl)
//            user = retrievedUser
            self.apiUser = retrievedUser
        } catch {
            print(error)
        }
//        return user!
    }
    
}
