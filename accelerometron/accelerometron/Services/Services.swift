//
//  Services.swift
//  accelerometron
//
//  Created by MOHAMED on 10/14/19.
//  Copyright © 2019 MOHAMED. All rights reserved.
//

import Foundation
class Services {
    
    static let Instance = Services()
    let myList = [
        List(image: "1", Label: "CAMERAS"),
        List(image: "2", Label: "CITY"),
        List(image: "3", Label: "ANIMALS"),
        List(image: "4", Label: "FLOWERS"),
        List(image: "5", Label: "STANDS"),
        List(image: "6", Label: "URBAN"),
    ]
    
    func getMyList()->[List]
    {
        return myList
    }
}




