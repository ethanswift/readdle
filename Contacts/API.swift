//
//  Avatar.swift
//  Contacts
//
//  Created by ehsan sat on 5/29/20.
//  Copyright © 2020 ehsan sat. All rights reserved.
//

import UIKit

class API {
    var email: String
    init(email: String) {
        self.email = email
    }
    func retrieveData(email: String) {
        DispatchQueue.global(qos: .background).async {
            let mockUser = MockUser()
            let hash = mockUser.mockUserHash
            let url = URL(fileURLWithPath: "https://en.gravatar.com/\(hash).json")
            let sessionConfig = URLSessionConfiguration.default
            let session = URLSession(configuration: sessionConfig)
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            
            let task = session.dataTask(with: request) { (data, response, error) in
                if error != nil {
                    print(error!.localizedDescription)
                }
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as! Dictionary<String, Any>
                    print(json)
                } catch {
                    print(error)
                }
            }
            task.resume()
        }
    }
}
