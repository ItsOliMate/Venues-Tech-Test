//
//  ContentView.swift
//  Venues Tech Test
//
//  Created by Oliver Jones on 04/12/2019.
//  Copyright © 2019 Oliver Jones. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @ObservedObject private var postListVM = PostListViewModel()
    
    var url = "https://api.myjson.com/bins/tfdr0"
    
    var body: some View {
        
        // LIST VIEW
        
        List(self.postListVM.posts, id: \.imageUrl) { venues in
        
                ZStack(alignment: .center) {
                    
                        ZStack(alignment: .center) {
                            
                            Card()
                            
                            URLImage(url: venues.imageUrl)
                                .frame(width: 390, height: 250)
                                .cornerRadius(5)
                                .imageScale(/*@START_MENU_TOKEN@*/.small/*@END_MENU_TOKEN@*/)
                                
                                .overlay((LinearGradient(gradient:  Gradient(colors: [Color("darkFade"), Color("dark")]), startPoint: .top, endPoint: .bottom)))
                                .cornerRadius(5)
                                .frame(width: 400, height: 0)
                            
                        }
                        .frame(width: 400, height: 250)
                        .padding(.trailing, 46)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    
                    
                    
                    Rectangle()
                        .foregroundColor(Color.black)
                        .frame(width: 105.5, height: 20.0)
                        .cornerRadius(5)
                    .blur(radius: 6)
                        .shadow(radius: 30)
                        .offset(x: -150, y: -90)
                    
                    if(venues.cost == "free") {
                        Text("FREE EVENT")
                            .font(.custom("SFCompactDisplay-Regular", size: 16))
                            .foregroundColor(Color.white)
                            .offset(x: -150, y: -90)
                            .shadow(radius: 30)
                    }else {
                        Text("PAID EVENT")
                            .font(.custom("SFCompactDisplay-Regular", size: 16))
                            .foregroundColor(Color.white)
                            .offset(x: -150, y: -90)
                            .shadow(radius: 30)
                    }
                    
                    Spacer()
                    
                    HStack(alignment: .center) {
                        Text(venues.venue)
                            .font(.custom("SFCompactDisplay-Medium", size: 17))
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .offset(x: -120 ,y: 75)
                            .padding(.leading, 135)
                            .lineLimit(1)
                        .multilineTextAlignment(.leading)
                        Spacer()
                        
                        Text("\(venues.startTime) - \(venues.endTime)")
                            .font(.custom("SFCompactDisplay-Medium", size: 14))
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .offset(x: -60 ,y: 83)
                            .multilineTextAlignment(.trailing)
                    }
                    HStack {
                        Text(venues.location)
                            .font(.custom("SFCompactDisplay-Regular", size: 15))
                            .foregroundColor(Color.gray)
                            .offset(x: -120 ,y: 95)
                            .padding(.leading, 135)
                            .lineLimit(1)
                        .multilineTextAlignment(.leading)
                        
                        Spacer()
                        
                    }
                    
                    // CALL BUTTON
                    
                    Button(action: {
                    
                        let dash = CharacterSet(charactersIn: "-")
                        
                        let cleanString =
                            venues.phoneNumber.trimmingCharacters(in: dash)
                        
                        let tel = "tel://"
                        let formattedString = tel + cleanString
                        let url: NSURL = URL(string: formattedString)! as NSURL
                        
                        UIApplication.shared.open(url as URL)
                        
                    }){Text("")}

                    
                    
                }
                .frame(width: 420, height: 250)
                .padding(.leading, 1)
                
                
                
            HStack {
                
                Rectangle()
                    .frame(width: 420, height: 250)
                
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .environment(\.colorScheme, .dark)
                .environment(\.sizeCategory, .extraLarge)
            ContentView()
        }
    }
}
