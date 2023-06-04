//
//  TaskDashboard.swift
//  inonesitting
//
//  Created by Abe on 5/31/23.
//

import SwiftUI

struct TaskDashboard: View {
    
    @State private var showAddView: Bool = false

    var body: some View {
        VStack(spacing: 0) {
        
            //MARK: Top Bar
            HStack {
                VStack(spacing: 8) {
                    Text("Dashboard")
                        .font(.title)
                        .fontWeight(.heavy)
                        .fontDesign(.serif)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Today, \(Date().formatted(.dateTime.month().day()))")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .padding(.leading, 24)
                
                Button {
                    showAddView = true
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Circle().foregroundColor(.red))
                        .padding(.trailing, 24)
                }
                .buttonStyle(.plain)
                    
            }
            .padding(.top, 24)
            .padding(.bottom)
            
            Divider()
               
            ScrollView(showsIndicators: false) {
                
            }
        }
        .background(Color.background)
        .sheet(isPresented: $showAddView) {
            CreateTask()
        }
    }
}

struct TaskDashboard_Previews: PreviewProvider {
    static var previews: some View {
        TaskDashboard()
    }
}
