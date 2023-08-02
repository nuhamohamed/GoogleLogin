//
//  Assignment.swift
//  GoogleLogin
//
//  Created by Garima  on 8/2/23.
//

import SwiftUI

struct Assignment: View {
    var body: some View {
        ZStack{
            Color.blue
            
            Image(systemName: "plus.app.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct Assignment_Previews: PreviewProvider {
    static var previews: some View {
        Assignment()
    }
}
