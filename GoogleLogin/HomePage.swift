//
//  HomePage.swift
//  GoogleLogin
//
//  Created by Nuha Mohamed on 8/2/23.
//

import SwiftUI

@available(iOS 15.0, *)
struct HomePage: View {
    @State var showDetails = false
    @State private var randomQuoteIndex = 0
    var randomQuotes = ["You are awesome!", "You deserve the world!", "You got this!", "Keep it up!", "Another day, another slay!"]
    var quote = ""
    
    var body: some View {
        TabView{
                VStack{
                    Text("Welcome, [name]!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.624, saturation: 0.507, brightness: 0.619))
                    
                        .padding(50)
                    
                    
                    Button( action: {
                        self.showDetails.toggle()
                        if self.showDetails {
                            self.randomQuoteIndex = Int.random(in: 0..<randomQuotes.count)
                        }
                    }) {
                        Text("Quotes")
                            .foregroundColor(Color(hue: 0.625, saturation: 0.762, brightness: 0.848))
                            .padding(10)
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 2)
                    )
                    if showDetails {
                        Text(randomQuotes[randomQuoteIndex])
                            .font(.body)
                            .foregroundColor(.blue)
                        
                    }
                
           
                    HStack{
                        Text("Due Soon")
                            .multilineTextAlignment(.leading)
                            .frame(width: 500, height: 150)
                            .background(Color.gray)
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
    
    
    @available(iOS 15.0, *)
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
    
}
