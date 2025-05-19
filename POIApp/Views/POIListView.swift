import SwiftUI

struct POIListView: View {
    var pois: [POI]

    var body: some View {
        List(pois) { poi in
            VStack(alignment: .leading) {
                Text(poi.name)
                    .font(.headline)
                Text("lat: \(poi.coordinate.latitude), lon: \(poi.coordinate.longitude)")
                    .font(.subheadline)
            }
        }
    }
}

#if DEBUG
struct POIListView_Previews: PreviewProvider {
    static var previews: some View {
        POIListView(pois: samplePOIs)
    }
}
#endif
