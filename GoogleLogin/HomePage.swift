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
                            
                            Text("Welcome, Nuha!")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color(red: 0.012, green: 0.291, blue: 0.667))
                    
                    
                    
                            Button( action: {
                                self.showDetails.toggle()
                                if self.showDetails {
                                    self.randomQuoteIndex = Int.random(in: 0..<randomQuotes.count)
                                }
                            }) {
                                Text("Quotes")
                            .font(.headline)
                            .fontWeight(.medium)
                            .foregroundColor(Color(red: 0.141, green: 0.31, blue: 0.65))
                            .padding(5)
                            }
                            .font(.title2)
                            .buttonStyle(.borderedProminent)
                            .tint(Color(red: 0.864, green: 0.899, blue: 0.937))
                    
                    //                    .overlay(
                    //                        RoundedRectangle(cornerRadius: 10)
                    //                            .stroke(Color(red: 0.864, green: 0.899, blue: 0.998))
                    
                            .padding(80)
                            if showDetails {
                                Text(randomQuotes[randomQuoteIndex])
                                    .font(.body)
                                    .foregroundColor(Color(hue: 0.611, saturation: 0.538, brightness: 0.766))
                        
                            }
                    
                    //                    Button("Submit Name") {
                    //
                    //                    }
                    //                    .font(.title2)
                    //                    .buttonStyle(.borderedProminent)
                    //                    .tint(.gray)
                    
                    HStack{
                        Text("Due Soon!")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color(red: 0.141, green: 0.31, blue: 0.65))
                            .frame(width: 800, height: 200)
                            .background(Color(red: 0.864, green: 0.899, blue: 0.937))
                        Spacer(minLength: 275)
                        
                        
                    }
                    
                    HStack{
                        Spacer()
                       
                        Image(systemName: "plus.app.fill")
                            .foregroundColor(Color(hue: 0.589, saturation: 0.737, brightness: 0.631))
                    }

            
                }
            
            
            
            
            
            .tabItem(){
                Image(systemName: "house.fill")
                Text("Home")
            }
            .padding()
            
            Assignment()
                .tabItem(){
                    Image(systemName: "plus.app.fill")
                    Text("Add")
                }
                .padding()
            Home()
                .tabItem(){
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
                .padding()
            
        }
    }
    
    
    @available(iOS 15.0, *)
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
    
    
}
