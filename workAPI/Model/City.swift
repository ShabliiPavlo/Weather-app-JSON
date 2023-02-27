//
//  City.swift
//  workAPI
//
//  Created by Pavel Shabliy on 15.02.2023.
//

import Foundation

struct City {
    let name: String
    let flag: String
}

struct ListOfCities {
    static let list: [City] = [City(name: "London", flag: "4"),
                               City(name: "Washington", flag: "5"),
                               City(name: "Kyiv", flag: "2"),
                               City(name: "Berlin", flag: "3"),
                               City(name: "Vancouver", flag: "1")]
}
