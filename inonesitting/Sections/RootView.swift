//
//  RootView.swift
//  inonesitting
//
//  Created by Allen Lin on 5/9/23.
//

import SwiftUI

struct RootView: View {
   
    @AppStorage("isNewUser") private var isNewUser: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                if isNewUser {
                    OnboardingView()
                }
                else {
                    TaskDashboard()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
