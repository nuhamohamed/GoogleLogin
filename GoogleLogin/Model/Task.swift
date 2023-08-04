//
//  Task.swift
//  GoogleLogin
//
//  Created by Nuha Mohamed on 8/4/23.
//

import SwiftUI

// Task Model
struct Task: Identifiable{
    var id = UUID().uuidString
    var taskTitle: String
    var taskDescription: String
    var taskDate: Date
}

/*struct Task: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Task_Previews: PreviewProvider {
    static var previews: some View {
        Task()
    }
}*/
