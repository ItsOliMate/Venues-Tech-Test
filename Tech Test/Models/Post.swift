//
//  Post.swift
//  Venues Tech Test
//
//  Created by Oliver Jones on 04/12/2019.
//  Copyright © 2019 Oliver Jones. All rights reserved.
//

import Foundation

struct Post : Codable {
    
    let imageUrl: String
    let location: String
    let venue: String
    let phoneNumber: String
    let startTime: String
    let endTime: String
    let cost: String
}

