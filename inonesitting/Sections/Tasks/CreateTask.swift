//
//  CreateTask.swift
//  inonesitting
//
//  Created by Abe on 5/31/23.
//

import SwiftUI

@available(iOS 16.1, *)
struct CreateTask: View {
    
    @State private var title: String = ""
    @State private var details: String = ""
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    

    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 60, height: 5)
                .foregroundColor(.gray.opacity(0.5))
                .padding()
            
            
            HStack {
                            Text("Create a Task ")
                                .font(.title)
                                .fontWeight(.bold)
                                .fontDesign(.serif)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top)
                                .padding(.horizontal, 24)
                                
                Button(action: {
                    //action
                               }) {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                                .padding(.trailing, 30)
                                .padding(.top, 11)
                               }
                               .buttonStyle(PlainButtonStyle())
                
                                }
            
            Spacer()
            
        
            
            VStack(spacing: 0) {
                Text("Enter a Titles")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
                    .padding(.horizontal, 24)
                
                TextField("Title", text: $title)
                    .padding()
                    .border(.black, width: 1)
                    .padding(.horizontal, 24)
            }
            
            VStack(spacing: 0) {
                Text("Enter its Details")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
                    .padding(.horizontal, 24)
                
                TextField("Details", text: $details)
                    .padding()
                    .border(.black, width: 1)
                    .padding(.horizontal, 24)
            
            }
            
            VStack(spacing: -60) {
                            Text("Start Time: ")
                //The start time is the time when a person should start their task.
                                .font(.title3)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.vertical)
                                .padding(.horizontal, 24)
                            
                            DatePicker("", selection: $startDate, displayedComponents: [.date, .hourAndMinute])
                                .padding()
                                .padding(.horizontal, 24)
                        }
            

            
            VStack(spacing: 0) {
                Text("Duration: ")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
                    .padding(.horizontal, 24)
                
                // Add a Picker or TextField to input the task duration here
                
            }
            
                        
                        VStack(spacing: -60) {
                            Text("Due Date: ")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.vertical)
                                .padding(.horizontal, 24)
                            
                            DatePicker("", selection: $endDate, displayedComponents: [.date, .hourAndMinute])
                                .padding()
                                .padding(.horizontal, 24)
                        }
            
                        
            
            Spacer()
            
            Spacer()
            
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.background)
    }
}

@available(iOS 16.1, *)
struct TaskAddView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTask()
    }
}
