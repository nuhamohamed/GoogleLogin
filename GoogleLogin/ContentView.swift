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
            NavigationLink(destination: HomePage()) {
                Image(systemName: "house.fill")

            }
            Text("Re-Do")
                .font(.title)
                .fontWeight(.bold)
                .padding()
                
            Text("Login")
                .padding(30)
        Link(destination: URL(string: "https://accounts.google.com/")!, label: {
            Text("Sign in with Google")
                .fontWeight(.bold)
                .multilineTextAlignment(.trailing)
                
            
            
        })
        .frame(width: 280, height: 50)
        .foregroundColor(.black)
        .background(Color.white)
        .border(Color.gray)
        .cornerRadius(20)
        
        }
}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
        }

