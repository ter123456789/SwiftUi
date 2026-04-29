//
//  LandMark.swift
//  SwiftUi
//
//  Created by Thongpop choojit on 28/4/2569 BE.
//

import Foundation
import SwiftUI
import CoreLocation

struct LandMark: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable, Hashable {
        case lake = "Lakes"
        case revers = "Rivers"
        case mountains = "Mountains"
    }
    
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Codable, Hashable {
        var latitude: Double
        var longitude: Double
    }
}

