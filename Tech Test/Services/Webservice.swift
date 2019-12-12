//
//  Webservice.swift
//  Venues Tech Test
//
//  Created by Oliver Jones on 04/12/2019.
//  Copyright © 2019 Oliver Jones. All rights reserved.
//

import Foundation

class Webservice: ObservableObject {
    
    func getPosts(completion: @escaping ([Post]?) -> ()) {
        
        let jsonURL = "https://api.myjson.com/bins/tfdr0"
        
        guard let url = URL(string: jsonURL) else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let decoder = JSONDecoder()
            
            let posts = try? decoder.decode([Post].self, from: data)
            
            DispatchQueue.main.async {
                completion(posts)
            }
        }.resume()
    }
}
