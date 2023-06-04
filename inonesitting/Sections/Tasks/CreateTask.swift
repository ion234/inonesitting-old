//
//  CreateTask.swift
//  inonesitting
//
//  Created by Abe on 5/31/23.
//

import SwiftUI

struct CreateTask: View {
    
    @State private var title: String = ""
    
    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 60, height: 5)
                .foregroundColor(.gray.opacity(0.5))
                .padding()
            
            Text("Create Task +")
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
            
            Spacer()
            
            Spacer()
            
            Spacer()
            
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
