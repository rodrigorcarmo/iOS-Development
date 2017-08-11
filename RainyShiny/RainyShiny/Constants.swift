//
//  Constants.swift
//  RainyShiny
//
//  Created by Rodrigo on 08/08/17.
//  Copyright © 2017 Rodrigo. All rights reserved.
//

import Foundation

let BASE_URL = "http://samples.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "c31bdf15d2b032a0debdc91ff3d4c45b"

typealias DownloadComplete  = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"
let FORECAST_URL = "http://samples.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=123&appid=c31bdf15d2b032a0debdc91ff3d4c45b"
