//
//  Location.swift
//  RainyShiny
//
//  Created by Rodrigo on 08/08/17.
//  Copyright © 2017 Rodrigo. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() { }
    
    var latitude: Double!
    var longitude: Double!
}
