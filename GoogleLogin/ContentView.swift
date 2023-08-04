//
//  ContentView.swift
//  GoogleLogin
//
//  Created by Nuha Mohamed on 8/1/23.
//



import SwiftUI

struct ContentView: View {
    var body: some View {
       
        NavigationView {
            ZStack{
                Image("newblue")
                  .resizable()
                  .scaledToFill()
                  .edgesIgnoringSafeArea(.all)
                  .frame(minWidth: 0, maxWidth: .infinity)
                  .opacity(1.0)
                VStack{
                    HStack{
                        Spacer()
            if #available(iOS 15.0, *) {
                NavigationLink(destination: HomePage()) {
                    
                    Image(systemName: "house.fill")
                        .foregroundColor(Color(hue: 0.589, saturation: 0.737, brightness: 0.631))
                        .font(.system(size:28))
                        .frame(width: 45, height: 45, alignment: .topTrailing)
                }
            } else {
                // Fallback on earlier versions
            }
                    }
                    .padding(.trailing)
                Text("Re-Do")
                        .font(.largeTitle.bold())
                    /*.font(.largeTitle)
                .fontWeight(.bold)*/
                        .foregroundColor(Color(hue: 0.676, saturation: 0.81, brightness: 0.306))
                        
                
                    
                
            Text("LOGIN")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(30)
                        .foregroundColor(.gray)
        Link(destination: URL(string: "https://accounts.google.com/")!, label:
                {
          Image("google.icon")
            Text("Sign in with Google")
                .fontWeight(.semibold)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.474))
                .multilineTextAlignment(.trailing)
            
            
            
        })
        .frame(width: 245, height: 50)
        .background(Color.white)
        .cornerRadius(29)
       
                }

            }
                    
                    
            }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
        
}
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
