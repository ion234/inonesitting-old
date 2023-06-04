//
//  CreateTask.swift
//  inonesitting
//
//  Created by Abe on 5/31/23.
//

import SwiftUI

struct CreateTask: View {
    
    @State private var title: String = ""
    @State private var details: String = ""
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    
    var body: some View {
        VStack(spacing: 0) {
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 60, height: 5)
                .foregroundColor(.gray.opacity(0.5))
                .padding()
            
            Divider()
            
            ScrollView(showsIndicators: false) {
                Text("New Task + ")
                    .font(.title2)
                    .fontWeight(.bold)
                    .fontDesign(.serif)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
                    .padding(.horizontal, 24)
                
                
                //MARK: Title Textfield
                VStack(spacing: 0) {
                    Text("Title")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical)
                        .padding(.horizontal, 24)
                    
                    TextField("Enter a Title", text: $title)
                        .padding()
                        .background(Color.white)
                        .border(.black.opacity(0.3), width: 1)
                        .padding(.horizontal, 24)
                }
                
                //MARK: Details TextEditor
                VStack(spacing: 0) {
                    Text("Details")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical)
                        .padding(.horizontal, 24)
                    
                    TextEditor(text: $details)
                        .frame(height: 100)
                    
                        .border(.black.opacity(0.3), width: 1)
                        .padding(.horizontal, 24)
                    
                }
                
                
                VStack(spacing: -0) {
                    Text("Start Time ")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical)
                        .padding(.horizontal, 24)
                    
                    DatePicker("", selection: $startDate, displayedComponents: [.date, .hourAndMinute])
                        .padding()
                        .padding(.horizontal, 24)
                }
                
                VStack(spacing: -55) {
                    Text("End Time ")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical)
                        .padding(.horizontal, 24)
                    
                    DatePicker("", selection: $endDate, displayedComponents: [.date, .hourAndMinute])
                        .padding()
                        .padding(.horizontal, 24)
                }
            }
            
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.background)
    }
}

struct TaskAddView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTask()
    }
}
