//
//  TaskListView.swift
//  inonesitting
//
//  Created by Allen Lin on 5/18/23.
//

import SwiftUI

struct TaskListView: View {
    @EnvironmentObject var realmManager: RealmManager
    var body: some View {
        VStack {
            Text("Your Tasks")
                .font(.title2)
                .fontWeight(.bold)
                .padding(20)
                .frame(maxWidth: .infinity, alignment: .leading)

            if realmManager.tasks.count >= 0 {
                List {
                    ForEach(realmManager.tasks, id: \.id) { task in
                        if !task.isInvalidated && !task.isFrozen {
                            TaskRow(task: task.title, completed: task.completed)
                                .onTapGesture {
                                    realmManager.updateTask(id: task.id, completed: !task.completed)
                                }
                        }
                    }
                    .onDelete { indexSet in
                        indexSet.forEach { index in
                            let taskTodelete = realmManager.tasks[index]
                            realmManager.deleteTask(id: taskTodelete.id)
                        }
                    }
                    .listRowSeparator(.hidden)
                    
                }
                            .scrollContentBackground(.hidden)
                        }
            
            
                        
                        Spacer()
                    }
                }
            }

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
            .environmentObject(RealmManager())
        
          
    }
}
