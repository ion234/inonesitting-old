//
//  WelcomeView.swift
//  inonesitting
//
//  Created by Allen Lin on 5/9/23.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack {
            
            Spacer()
            
            // MARK: Image placeholder
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 300)
                .padding(.horizontal, 20)
                .padding(.vertical)
            
            Spacer()
            
            
            // MARK: Welcome card
            VStack {
                
                Text("Welcome to ")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.horizontal)
                
                Text("In One Sitting")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.horizontal)
          
                Text("The all-in-one productivity tool that will guide and aid you throughout your day. ")
                    .font(.headline)
                    .lineSpacing(8)
                    .multilineTextAlignment(.center)
                    .padding()
                
            }
            
            Divider()
                .frame(width: 100)
                .padding(.horizontal)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Get Started")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(20)
                    .padding()
            }
            .buttonStyle(.plain)
            
            Spacer()
                
            
                
//                Text("To get started, share your location!")
            
//
//            LocationButton(.shareCurrentLocation){
//                locationManager.requestLocation()
//            }
//            .cornerRadius(30)
//            .symbolVariant(.fill)
//            .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
