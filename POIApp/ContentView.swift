import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.5665, longitude: 126.9780),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        TabView {
            NavigationView {
                Map(coordinateRegion: $region, annotationItems: samplePOIs) { poi in
                    MapMarker(coordinate: poi.coordinate)
                }
                .navigationTitle("POI Map")
            }
            .tabItem {
                Label("Map", systemImage: "map")
            }

            NavigationView {
                POIListView(pois: samplePOIs)
                    .navigationTitle("POI List")
            }
            .tabItem {
                Label("List", systemImage: "list.bullet")
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
