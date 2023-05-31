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
            
            Spacer()
            
            //MARK: Top Bar
            HStack {
                VStack(spacing: 8) {
                    Text("Your Tasks")
                        //.font(.custom("", fixedSize: 32))
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Today, \(Date().formatted(.dateTime.month().day()))")
                        //.font(.custom("", fixedSize: 16.5))
                        .font(.headline)
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .padding(.leading, 36)
                
                Button {
                    showAddView = true
                } label: {
                    Image(systemName: "plus")
                        .font(.custom("", fixedSize: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Circle().foregroundColor(.red))
                        .padding(.trailing, 32)
                }
                .buttonStyle(.plain)
                    
            }
            .padding(.top, 32)
            .padding(.bottom)
            
            Divider()
                .padding(.horizontal, 36)
            
            ScrollView(showsIndicators: false) {
                
                VStack(spacing: 4) {
                    Text("Today's Progress")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading, .vertical])
                    
                    Text("10/12 Tasks")
                        .font(.caption)
                        .fontWeight(.medium)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    Text("\(83) %")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                        
                    ProgressView(value: 10, total: 12)
                        .tint(.white)
                        .padding([.horizontal, .bottom])
                    
                }
                .background(Color("boldElements"))
                .cornerRadius(12)
                .padding(.horizontal, 32)
                .padding(.vertical)
                
                Text("All Day")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 32)
                
                HStack {
                    Text("Mow the lawn (example)")
                        .font(.body)
                        .fontWeight(.medium)
                        .padding(.leading, 32)
                    
                    Spacer()
                    
                    
                    Image(systemName: "checkmark")
                        .padding(.trailing, 32)
                }
                .padding(.top, 12)
                
                Divider()
                    .padding(.horizontal, 32)
            }
                    
        }
        .background(Color.background)
        .sheet(isPresented: $showAddView) {
            AddTaskView()
        }
    }
}

struct TaskDashboard_Previews: PreviewProvider {
    static var previews: some View {
        TaskDashboard()
    }
}
