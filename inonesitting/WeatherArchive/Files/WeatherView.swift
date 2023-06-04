//
//  WeatherView.swift
//  inonesitting
//
//  Created by Allen Lin on 5/16/23.
//

import SwiftUI
import Combine


struct WeatherView: View {
    @StateObject private var viewModel = ViewModel()

    var weather: ResponseBody
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    
                    
                    VStack {
                        
                        //MARK: Top Bar
                        VStack {
                            VStack(spacing: 0) {
                                Text(weather.name)
                                    .font(.title)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Today, \(Date().formatted(.dateTime.month().day().hour().minute()))")
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.vertical, 6)
                            
                            }
                            
                            HStack {
                                
                                Button {
                                    // Code to be executed when the button is tapped
                                    print("Button tapped!")
                                } label: {
                                    Text("Store")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black.opacity(0.8))
                                        .padding()
                                        .padding(.horizontal)
                                        .background(Color("foreground"))
                                        .cornerRadius(30)
                                        .shadow(radius: 0.5, x: 2, y: 3)
    
                                }
                                
                                Spacer()
                                
                                Button(action: {
                                    // Code to be executed when the button is tapped
                                    print("Button tapped!")
                                }) {
                                    Text("Profile")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black.opacity(0.8))
                                        .padding()
                                        .padding(.horizontal)
                                        .background(Color("foreground"))
                                        .cornerRadius(30)
                                        .shadow(radius: 0.5, x: 2, y: 3)
                                }
                                
                                Spacer()
                                Button(action: {
                                    // Code to be executed when the button is tapped
                                    print("Button tapped!")
                                    viewModel.goToViewB()
                        
                                    
                                    
                                }) {
                                    Text("Tasks")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.black.opacity(0.8))
                                        .padding()
                                        .padding(.horizontal)
                                        .background(Color("foreground"))
                                        .cornerRadius(30)
                                        .shadow(radius: 0.5, x: 2, y: 3)
                                }
                                
                            }
                            .padding(.top, 6)
                        }
                        
                        Spacer()
                        
                        VStack {
                            HStack {
                                Spacer()
                                Spacer()
                                
                                VStack(spacing: 20){
                                    Image(systemName: "sun.max")
                                        .font(.system(size: 40))
                                    
                                    Text(weather.weather[0].main)
                                }
                                .frame(width: 150, alignment: .leading)
                                .foregroundColor(.black)
                                
                                Spacer()
                                
                                
                                Text(weather.main.feelsLike.roundDouble() + "°")
                                    .font(.system(size: 100))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .padding()
                                
                            }
                        }
                        
        
                        Spacer()
                        
                        AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2020/01/24/21/33/city-4791269_960_720.png")) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 220)
                                .clipped()
                        } placeholder: {
                            ProgressView()
                        }
                        
                        Spacer()
                            
                
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack {
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 20){
                            Text("Weather Overview")
                                .bold().padding(.bottom)
                            
                            HStack {
                                WeatherRow(logo: "thermometer.low", name: "Min. Temp.", value: (weather.main.tempMin.roundDouble()) + "°")
                                
                                Spacer()
                                
                                WeatherRow(logo: "thermometer.high", name: "Max. Temp.", value: (weather.main.tempMax.roundDouble()) + "°")
                                
                                
                            }
                            HStack {
                                WeatherRow(logo: "wind", name: "Wind Speed", value: (weather.wind.speed.roundDouble()) + " m/s")
                                
                                Spacer()
                                
                                WeatherRow(logo: "humidity", name: "Humidity", value: (weather.main.humidity.roundDouble()) + "%")
                                
                                
                            }
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .padding(.bottom, 20)
                        .foregroundColor(Color(hue: 0.118, saturation: 0.65, brightness: 0.415))
                        .background(.gray.opacity(0.7))
                        .customCornerRadius(20, corners: [.topLeft, .topRight])
                        
                    }
                    
                    NavigationLink {
                        TaskView()
                    } label: {
                        Text("")
                    }
                    
                    NavigationLink(destination: TaskView(), isActive: $viewModel.showSecondView) {
                    }
                    
                }
                
            }
            .edgesIgnoringSafeArea(.bottom)
            .background(Color.background)
        }
        .preferredColorScheme(.light)
        
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView(weather: previewWeather)
    }
}
