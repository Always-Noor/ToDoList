//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Bindable var toDoItem: ToDoItem
    
    var body: some View {
        VStack {
            Text("Task Title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
            }
            Button("Save") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .font(.title)
            .fontWeight(.bold)
        }
        .padding()
    }
}

#Preview {
    NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
}
