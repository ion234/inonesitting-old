//
//  Task.swift
//  inonesitting
//
//  Created by Allen Lin on 5/18/23.
//

import SwiftUI

struct TaskView: View {
    
    @StateObject var realmManager = RealmManager()
    
    @State private var showAddTaskView = false
    
    @EnvironmentObject private var viewModel: ViewModel
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            TaskListView()
                .environmentObject(realmManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)
        }
        .onAppear { realmManager.getTasks()}
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.901))
    
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
