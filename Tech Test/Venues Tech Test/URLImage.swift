//
//  URLImage.swift
//  Venues Tech Test
//
//  Created by Oliver Jones on 05/12/2019.
//  Copyright © 2019 Oliver Jones. All rights reserved.
//

import Foundation
import SwiftUI

struct URLImage: View {
    
    @ObservedObject private var imageLoader = ImageLoader()
    
    var placeholder = Image("ErrorIcon")
    
    init(url: String, placeholder: Image = Image("ErrorIcon")) {
        self.placeholder = placeholder
        self.imageLoader.load(url: url)
    }
    
    var body: some View {
        if let uiImage = self.imageLoader.downloadedImage {
            return Image(uiImage: uiImage)
        } else {
            return placeholder
        }
    }
    
}
