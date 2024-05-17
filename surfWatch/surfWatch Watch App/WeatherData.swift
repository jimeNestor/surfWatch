//
//  WeatherData.swift
//  surfWatch Watch App
//
//  Created by Nestor Jimenez on 5/17/24.
//

import Foundation
import WeatherKit

class WeatherData {
    
    //function to get Current Weather
    func currentWeather(for location: CLLocation) async -> CurrentWeather? {
      let currentWeather = await Task.detached(priority: .userInitiated) {
        let forecast = try? await self.service.weather(
          for: location,
          including: .current)
        return forecast
      }.value
      return currentWeather
    }
    

}
