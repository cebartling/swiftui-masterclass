//
//  MapView.swift
//  Africa
//
//  Created by Christopher Bartling on 1/24/21.
//

import MapKit
import SwiftUI

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        return mapRegion
    }()

    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            // MapPin(coordinate: item.location, tint: .accentColor)

            // MapMarker(coordinate: item.location, tint: .accentColor)

//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            }
            
            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
        })
        .overlay(
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.accentColor)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 12)
            .background(
                Color.black.cornerRadius(8).opacity(0.6)
            )
            .padding()
            , alignment: .top
        )
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
