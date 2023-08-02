//
//  Calendar.swift
//  GoogleLogin
//
//  Created by Garima  on 8/2/23.
//

import SwiftUI

struct Calendar: View {
    var body: some View {
        ZStack{
            Color.green
            
            Image(systemName: "calendar")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
        }
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
