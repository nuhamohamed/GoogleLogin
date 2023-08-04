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
        VStack{
            if #available(iOS 15.0, *) {
                NavigationLink(destination: HomePage()) {
                    Image(systemName: "house.fill")
                        .foregroundColor(Color(hue: 0.589, saturation: 0.737, brightness: 0.631))
                        .font(.system(size:28))
                    
                }
            } else {
                // Fallback on earlier versions
            }
            Text("Re-Do")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.676, saturation: 0.81, brightness: 0.306))
                .padding()
                
            Text("Login")
                .font(.title3)
                .padding(30)
        Link(destination: URL(string: "https://accounts.google.com/")!, label:
                {
          Image("google.icon")
            Text("Sign in with Google")
                .fontWeight(.semibold)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.474))
                .multilineTextAlignment(.trailing)
            

            
        })
        .frame(width: 225, height: 50)
        .foregroundColor(.black)
        .background(Color.white)
        .border(Color(hue: 1.0, saturation: 0.038, brightness: 0.577))
        .cornerRadius(2)
        
        }
}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
        }

