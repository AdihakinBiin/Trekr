//
//  Locations.swift
//  Trekr
//
//  Created by Abdihakin Elmi on 1/9/21.
//

import Foundation
class Locations: ObservableObject {
    let places: [Location]
    var primary: Location {
        places[4]
    }
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")
        let data = try! Data(contentsOf: url!)
        places = try! JSONDecoder().decode([Location].self, from: data)
        
    }
}
