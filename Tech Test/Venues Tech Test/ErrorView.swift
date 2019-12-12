//
//  ErrorView.swift
//  Venues Tech Test
//
//  Created by Oliver Jones on 07/12/2019.
//  Copyright © 2019 Oliver Jones. All rights reserved.
//

import SwiftUI

struct ErrorView: View {
    var body: some View {
         List {
        VStack(spacing: 10) {
            Image("AdsIcon")
            Text("Nothing to show")
                .font(.headline)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
            Text("No upcoming events are scheduled. If you believe this is incorrect, please get in touch with our CORE team.")
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

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView()
    }
}

struct Card: View {
    var body: some View {
        ZStack(alignment: .center) {
            
            Rectangle()
                .frame(width: 390, height: 250)
                .cornerRadius(5)
                .foregroundColor(.gray)
                .opacity(0.2)
            
            Image("PhotoIllustration")
                .shadow(radius: 1)
                .offset(x: -150,y: -60)
                .opacity(0.5)
            
            Rectangle()
                .frame(width: 250, height: 20)
                .cornerRadius(5)
                .shadow(radius: 1)
                .offset(x: -50,y: 65)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            Rectangle()
                .frame(width: 200, height: 20)
                .cornerRadius(5)
                .shadow(radius: 1)
                .offset(x: -75,y: 95)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
        .padding(.horizontal, 6)
    }
}
