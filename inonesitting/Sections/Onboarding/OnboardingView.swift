//
//  OnboardingView.swift
//  inonesitting
//
//  Created by Allen Lin on 5/9/23.
//

import SwiftUI
import CoreLocationUI

enum onboardStage {
    case welcome, askPermission
}

struct OnboardingView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    @State private var stage: onboardStage = .welcome
    
    var body: some View {
        VStack {
            switch stage {
            case .welcome:
                VStack {
                    
                    Spacer()
                    
                    // MARK: Top Graphic
                    ZStack {
                        Circle()
                            .frame(width: 220)
                            .shadow(radius: 0.5, x: 5, y: 5)
                        
                        VStack {
                            ForEach(0..<3) { num in
                                HStack {
                                    Rectangle()
                                        .frame(width: 22, height: 22)
                                        .cornerRadius(5)
                                    
                                    Rectangle()
                                        .frame(width: 108, height: 22)
                                        .cornerRadius(5)
                                }
                                .foregroundColor(.background)
                                .padding(.bottom, 4)
                            }
                        }
                    }
                    
                    Spacer()
                    
                    // MARK: Welcome card
                    VStack(spacing: 10) {
                        
                        Text("Welcome to ")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                        
                        Text("In One Sitting")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .padding(.horizontal)
                        
                    }
                    
                    Divider()
                        .frame(width: 100)
                        .padding(.horizontal)
                    
                    //MARK: Description
                    VStack {
                        Text("The all-in-one productivity tool that will guide and aid you throughout your day. ")
                            .font(.headline)
                            .foregroundColor(.black.opacity(0.7))
                            .lineSpacing(12)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal)
                            .padding(.top)
                    }
                    
                    Spacer()
                    
                    //MARK: Get Started Button
                    Button {
                        withAnimation {
                            stage = .askPermission
                        }
                    } label: {
                        Text("Get Started")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black.opacity(0.8))
                            .padding()
                            .padding(.horizontal)
                            .background(Color("foreground"))
                            .cornerRadius(30)
                            .shadow(radius: 0.5, x: 3, y: 3)
                            .padding()
                    }
                    .buttonStyle(.plain)
                    
                    Spacer()
                    
                }
                
            case .askPermission:
                VStack {
                    VStack(spacing: 10) {
                        Text("To get started,")
                            .font(.headline)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                        
                        Text("share your location")
                            .font(.headline)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.center)
                    }
                    
                    LocationButton(.shareCurrentLocation){
                        locationManager.requestLocation()
                    }
                    .cornerRadius(30)
                    .symbolVariant(.fill)
                    .foregroundColor(.white)
                    .padding(.top)
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.background)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
