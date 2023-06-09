//
//  TaskDashboard.swift
//  inonesitting
//
//  Created by Abe on 5/31/23.
//

import SwiftUI

struct TaskDashboard: View {
    
    @State private var showAddView: Bool = false
    
    @AppStorage("firstTask") private var isFirstTask: Bool = true
    
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
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Circle().foregroundColor(.black))
                        .padding(.trailing, 24)
                }
                .buttonStyle(.plain)
                    
            }
            .padding(.top, 20)
            .padding(.bottom)
            
            Divider()
               
            if isFirstTask {
                ScrollView(showsIndicators: false) {
                    
                    VStack {
                        
                        Text("Looks like you don't have any tasks. ")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        
                        Button {
                            
                            showAddView = true
                            isFirstTask = false
                            
                        } label: {
                            Text("New Task")
                                .fontWeight(.semibold)
                                .foregroundColor(.black)
                                .padding(10)
                                .background(Color.white)
                                .cornerRadius(8)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .padding([.horizontal, .bottom])
                        
                        
                    }
                    .background(Color.black)
                    .cornerRadius(8)
                    .padding(24)
                    
                }
            }
            
            else {
                ScrollView(showsIndicators: false) {
                    
                    
                    
                }
            }
        }
        .background(Color.background)
        .fullScreenCover(isPresented: $showAddView) {
            CreateTask()
        }
    }
}

struct TaskDashboard_Previews: PreviewProvider {
    static var previews: some View {
        TaskDashboard()
    }
}
