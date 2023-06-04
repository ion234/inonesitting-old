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
            
            Text("Create a Task + ")
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.serif)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top)
                .padding(.horizontal, 24)
            
            Spacer()
            
            
            VStack(spacing: 0) {
                Text("Enter a Title")
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
            
            VStack(spacing: -55) {
                            Text("Start Date")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.vertical)
                                .padding(.horizontal, 24)
                
              
                    DatePicker("", selection: $startDate, displayedComponents: .date)
                        .padding()
                        .padding(.horizontal, 24)
                
                
                        }
                        
                        VStack(spacing: -55) {
                            Text("End Date")
                                .font(.title3)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.vertical)
                                .padding(.horizontal, 24)
                            
                            DatePicker("", selection: $endDate, displayedComponents: .date)
                                .padding()
                                .padding(.horizontal, 24)
                        }
            
            Spacer()
            
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
