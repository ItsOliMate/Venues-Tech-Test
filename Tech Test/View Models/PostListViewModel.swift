//
//  PostListViewModel.swift
//  Venues Tech Test
//
//  Created by Oliver Jones on 04/12/2019.
//  Copyright © 2019 Oliver Jones. All rights reserved.
//

import Foundation

class PostListViewModel: ObservableObject {
    @Published var posts = [PostViewModel]()
    
    init() {
        
        Webservice().getPosts { posts in
            
            if let posts = posts {
                self.posts = posts.map(PostViewModel.init)
                
            }
        }
    }
}

struct PostViewModel {
    
    var post: Post
    
    init(post: Post) {
        self.post = post
    }
    
    var imageUrl: String {
        return self.post.imageUrl
    }
    var location: String {
        return self.post.location
    }
    var venue: String {
        return self.post.venue
    }
    var phoneNumber: String {
        return self.post.phoneNumber
    }
    var startTime: String {
            let formatter = DateFormatter()
            formatter.timeZone = TimeZone(secondsFromGMT: 0)
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            if let date = formatter.date(from: post.startTime) {
                formatter.dateFormat = "MMM d \n hh:mm"
                return formatter.string(from: date)
            } else {
                return post.startTime
            }
        }
        var endTime: String {
            let formatter = DateFormatter()
            formatter.timeZone = TimeZone(secondsFromGMT: 0)
            formatter.locale = Locale(identifier: "en_US_POSIX")
            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            if let date = formatter.date(from: post.endTime) {
                formatter.dateFormat = "hh:mm a"
                return formatter.string(from: date)
            } else {
                return post.endTime
            }
        }
        var cost: String {
            return self.post.cost
        }
}
