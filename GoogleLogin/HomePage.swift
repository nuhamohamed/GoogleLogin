//
//  HomePage.swift
//  GoogleLogin
//
//  Created by Nuha Mohamed on 8/2/23.
//

import SwiftUI

struct HomePage: View {
    @State var showDetails = false
    var randomQuotes = ["You are awesome!", "You are amazing!", "You deserve the world!", "You got this!", "Push through!"]
    var body: some View {
        TabView{
                VStack{
                    Text("Welcome, [name]!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.1, green: 0.2, blue: 0.5, opacity: 1.0))
                    
                        .padding(50)
                    
                  
                    Button( action: {
                        self.showDetails.toggle()
                    }) {
                        Text("Quote OTD")
                            .font(.headline)
                            .fontWeight(.regular)
                       //     .buttonStyle(.borderedProminent)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 1)
                            )
                            .padding(10)
                    }
                   
                    if showDetails {
                        Text("Random Quotes")
                    }

                    
    
                    
                }
        
            
            

            
                .tabItem(){
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            Assignment()
                .tabItem(){
                    Image(systemName: "plus.app.fill")
                    Text("Add")
                }
            Calendar()
                .tabItem(){
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
            
        }
    }
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
}
