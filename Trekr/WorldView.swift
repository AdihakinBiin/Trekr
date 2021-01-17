//
//  WorldView.swift
//  Trekr
//
//  Created by Abdihakin Elmi on 1/9/21.
//

import SwiftUI
import MapKit

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 57.1200, longitude: -4.7100), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    
    
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places){ location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
                NavigationLink(
                    destination: ContentView(location: location)) {
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 40, height: 20, alignment: .center)
                        .shadow(radius: 5)
                }
            }
        }.ignoresSafeArea()
    }

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
}
