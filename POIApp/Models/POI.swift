import Foundation
import CoreLocation

struct POI: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

let samplePOIs: [POI] = [
    POI(name: "Seoul City Hall", coordinate: CLLocationCoordinate2D(latitude: 37.5665, longitude: 126.9780)),
    POI(name: "Namsan Tower", coordinate: CLLocationCoordinate2D(latitude: 37.5512, longitude: 126.9882))
]
