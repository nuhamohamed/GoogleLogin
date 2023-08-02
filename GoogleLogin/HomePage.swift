//
//  HomePage.swift
//  GoogleLogin
//
//  Created by Nuha Mohamed on 8/2/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        TabView{
            
            ZStack{
                Color.red
                
                Image(systemName: "house.fill")
                    .foregroundColor(Color.white)
                    .font(.system(size: 100.0))
            }
            
            HomePage()
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
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
