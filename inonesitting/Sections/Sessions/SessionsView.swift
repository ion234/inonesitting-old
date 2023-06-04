//
//  SessionsView.swift
//  inonesitting
//
//  Created by Allen Lin on 6/4/23.
//

import SwiftUI

@available(iOS 16.1, *)
struct SessionsView: View {
    @State private var showAlert = false

    var body: some View {
        VStack(spacing: 0) {
            
            //MARK: Top Bar
            HStack {
                VStack(spacing: 8) {
                    Text("Work Sessions")
                        .font(.title)
                        .fontWeight(.heavy)
                        .fontDesign(.serif)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        Spacer()
                        Button(action: {
                            showAlert = true
                        }) {
                            Image(systemName: "info.circle.fill")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        .padding(.horizontal, 133)
                        .padding(.vertical, -35)
                        .alert(isPresented: $showAlert) {
                                    Alert(
                                        title: Text("Work Sessions"),
                                        message: Text("A work session is a time interval dedicated to a set of tasks."),
                                        dismissButton: .default(Text("OK"))
                                    )
                                }
                        
                        
                    }
                    
                    Text("Number of tasks scheduled for today: ")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .padding(.leading, 24)
            }
            Spacer()
        }
     
    }
    
    @available(iOS 16.1, *)
    struct SessionsView_Previews: PreviewProvider {
        static var previews: some View {
            SessionsView()
        }
    }
    
}
