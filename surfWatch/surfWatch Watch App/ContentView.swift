//
//  ContentView.swift
//  surfWatch Watch App
//
//  Created by Nestor Jimenez on 5/13/24.
//

import SwiftUI
import WeatherKit

struct ContentView: View {
    
    let weatherCondition = WeatherCondition.cloudy
    
    var body: some View {
        HStack(alignment: .top ,content: {
            VStack(content: {
                Text(weatherCondition.rawValue == "cloudy" ? "☁️" : "☀️")
            })
        })
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
