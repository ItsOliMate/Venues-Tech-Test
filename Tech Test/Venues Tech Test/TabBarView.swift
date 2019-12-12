//
//  TabBarView.swift
//  Venues Tech Test
//
//  Created by Oliver Jones on 07/12/2019.
//  Copyright © 2019 Oliver Jones. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView{
            
            ContentView()
                .tabItem({
                    Text( "UPCOMING")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                })
                
                .tag(1)
            Archived().tabItem({
                Text("ARCHIVED")
                    .foregroundColor(.primary)
                    .padding(.top, 40)
            })
                
                .tag(2)
            Options().tabItem({
                Text("OPTIONS")
                    .foregroundColor(.primary)
                    .padding(.top, 40)
            })
        }
        .background(Color.primary)
        
        
    }
    
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
