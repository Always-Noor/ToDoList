//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    
    @Query var toDos: [ToDoItem]
    var body: some View {
        
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                
                
                Button{
                    withAnimation {
                        showNewTask = true
                    }
                } /*closes Button*/
                label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                } /*closes label*/
                
            } //closes HStack
            
            
        } //closes VStack
        .padding()
        Spacer()
        
        List{
            ForEach(toDos){ toDoItem in
                Text(toDoItem.title)
            }
        } //closes list
        
        if showNewTask {
            NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
        }
        
    } // closes Body
}

#Preview {
    ContentView()
}
