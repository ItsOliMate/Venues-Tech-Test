//
//  WifiErrorView.swift
//  Venues Tech Test
//
//  Created by Oliver Jones on 07/12/2019.
//  Copyright © 2019 Oliver Jones. All rights reserved.
//

import SwiftUI

struct WifiErrorView: View {
    var body: some View {
        List {
            VStack(spacing: 10) {
                Image("OfflineIcon")
                Text("Something's gone wrong")
                    .font(.headline)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                Text("You appear to be offline. Check your mobile or wifi connection and try again.")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
                
                Card()
                
                Card()
                
                Card()
            }
            .padding(.top, 100)
            .padding(.horizontal, -10)
        }
    }
}

struct WifiErrorView_Previews: PreviewProvider {
    static var previews: some View {
        WifiErrorView()
    }
}
