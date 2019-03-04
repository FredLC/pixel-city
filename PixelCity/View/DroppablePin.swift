//
//  DroppablePin.swift
//  PixelCity
//
//  Created by Fred Lefevre on 2019-03-04.
//  Copyright © 2019 Fred Lefevre. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
