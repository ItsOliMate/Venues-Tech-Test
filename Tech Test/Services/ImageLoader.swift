//
//  ImageLoader.swift
//  Venues Tech Test
//
//  Created by Oliver Jones on 05/12/2019.
//  Copyright © 2019 Oliver Jones. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ImageLoader: ObservableObject{
    
    var downloadedImage: UIImage?
    let didChange = PassthroughSubject<ImageLoader?, Never>()
    var CorrectedUrl = "url"
    
    func load(url: String) {
        
        if (url.contains("jpg")) {
            
            CorrectedUrl = url
            
        }else {
            CorrectedUrl = "\(url + "g")"
        }
        
        guard let imageURL = URL(string: CorrectedUrl) else {
            fatalError("ImageURL is not correct!")
        }
        
        
        
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    self.didChange.send(nil)
                }
                return
            }
            
            self.downloadedImage = UIImage(data: data)
            DispatchQueue.main.async {
                self.didChange.send(self)
            }
            
        }.resume()
        
    }
    
    
}
