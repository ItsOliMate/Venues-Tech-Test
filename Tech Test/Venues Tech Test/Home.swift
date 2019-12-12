//
//  Home.swift
//  Venues Tech Test
//
//  Created by Oliver Jones on 08/12/2019.
//  Copyright © 2019 Oliver Jones. All rights reserved.
//

import SwiftUI

struct Home: View {
    @ObservedObject private var postListVM = PostListViewModel()
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                
                ContentView()
                    
                TabBarView()
                
            }.navigationBarTitle(Text("SpeedFlatmating")
                .font(.custom("SFCompactDisplay-Medium", size: 25)), displayMode: .inline)
            .navigationBarItems(
                leading:  Image("CloseIcon"),
                trailing: Image("MoreHorizontalIcon"))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Home()
            Home()
                .environment(\.colorScheme, .dark)
                .environment(\.sizeCategory, .extraLarge)
            Home()
        }
    }
}

