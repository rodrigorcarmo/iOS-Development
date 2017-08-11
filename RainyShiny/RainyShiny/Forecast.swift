//
//  Forecast.swift
//  RainyShiny
//
//  Created by Rodrigo on 08/08/17.
//  Copyright © 2017 Rodrigo. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    var _date: String!
    var _weatherType: String!
    var _highTemp: String!
    var _lowTemp: String!
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        
        return _weatherType
    }
    
    var highTemp: String {
        if _highTemp == nil {
            _highTemp = "0.0°"
        }
        
        return _highTemp
    }
    
    var lowTemp: String {
        if _lowTemp == nil {
            _lowTemp = "0.0°"
        }
        
        return _lowTemp
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        if let temp = weatherDict["temp"] as? Dictionary<String,AnyObject> {
            if let min = temp["min"] as? Double {
                let kelvinToCelsius = min - 273.15
                let celsius = Double(round(10 * kelvinToCelsius/10))
                self._lowTemp = "\(celsius)°"
            }
            if let max = temp["max"] as? Double {
                let kelvinToCelsius = max - 273.15
                let celsius = Double(round(10 * kelvinToCelsius/10))
                self._highTemp = "\(celsius)°"
            }
        }
        if let weather = weatherDict["weather"] as? [Dictionary<String,AnyObject>] {
            if let main = weather[0]["main"] as? String {
                self._weatherType = main.capitalized
            }
        }
        if let date = weatherDict["dt"] as? Double {
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertedDate.dayOfTheWeek()
        }
    }
}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}
