//
//  CreateTask.swift
//  inonesitting
//
//  Created by Abe on 5/31/23.
//

import SwiftUI

struct CreateTask: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var title: String = ""
    @State private var details: String = ""
    @State private var startDate: Date = Date()
    @State private var endDate: Date = Date()
    
    var body: some View {
        VStack(spacing: 0) {
            
            //MARK: Nav/Title Bar
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .rotationEffect(Angle(degrees: 270))
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(12)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(8)
                        .shadow(radius: 1)
                        .padding(.bottom, 8)
                    
                }
                .buttonStyle(.plain)
                
                Spacer()
                
                Text("New Task")
                    .font(.system(size: 22))
                    .fontWeight(.semibold)
                    .fontDesign(.serif)
                    .padding(.bottom, 8)
            }
            .padding(.horizontal, 24)
            
            Divider()
                .padding(.top, 8)
            
            ScrollView(showsIndicators: false) {
                
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
                .padding(.top)
                
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
