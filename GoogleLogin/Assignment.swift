//
//  Assignment.swift
//  GoogleLogin
//
//  Created by Garima  on 8/2/23.
//

import SwiftUI

struct Assignment: View {
    @State private var classn = ""
    @State private var assignmentn = ""
    @State private var duedate = Date()
    //@State private var percent = ""
    @State private var percent: Double = 15
    @State private var minute: Double = 5
    
    var asgtype = ["Essay", "Research Paper", "Discussion Post", "Practice Questions", "Project", "Presentation", "Lab Report", "Case Study", "Other"]
        @State private var selectedAsgtype = ""
    
    var body: some View {
        VStack {
                
            Form {
                                
            Section(header: Text("Class Name")) {
                TextField("Insert class name here", text: $classn)
            }
                Section(header: Text("Assignment Name")) {
                    TextField("Insert assignment name here", text: $assignmentn)
                }
                Section(header: Text("Due Date")) {
                    DatePicker("", selection: $duedate)
                        
                }
                /*Section(header: Text("Percentage Worth in Class")) {
                    TextField("Insert percentage here", value: $percent, formatter: NumberFormatter())
                        .keyboardType(UIKeyboardType.decimalPad)*/
                    
                Section(header: Text("Assignment Type")){
                Picker("Please select a type", selection: $selectedAsgtype) {
                                ForEach(asgtype, id: \.self) {
                                    Text($0)
                                }
                            }
                            Text(selectedAsgtype)
                    }
                
                Section(header: Text("Percentage Worth In Class ")){
                    Stepper("Selected percent: \(Int(percent))", value: $percent, in: 0...100, step: 5)
                    }
                
                Section(header: Text("Estimated Time for Completion")){
                    Stepper("Minutes needed: \(Int(minute))", value: $minute, in: 0...100, step: 5)
                       
                    }
                  
            }
            
            .accentColor(Color("myblue"))
                
            /*Text("CLASS NAME")
                .font(.body)
                .fontWeight(.light)
                .foregroundColor(Color("myblue"))
                .multilineTextAlignment(.leading)
                .padding()
            TextField("Insert class name here..", text: $classn)
                .multilineTextAlignment(.leading)
                .font(.body)
                .border(Color.gray, width: 1)
                .padding(10)
                .cornerRadius(20)
                .foregroundColor(Color.gray)*/
                
        }
        .navigationTitle("Assignment Input Info")
        .accentColor(Color("myblue"))
        
            }
        }
struct Assignment_Previews: PreviewProvider {
    static var previews: some View {
        Assignment()
    }
}
