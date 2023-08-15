//
//  MapView.swift
//  AfricaApp
//
//  Created by Adriancys Jesus Villegas Toro on 11/5/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Properties
    @State private var region: MKCoordinateRegion = {
        var mapCordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLavel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCordinates, span: mapZoomLavel)
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] =  Bundle.main.decode("locations.json")
    
    // MARK: - Body
    
    var body: some View {
        // Basic Map
//        Map(coordinateRegion: $region)
        
        // Map with anotations
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            //A (pin) Old style static
//            MapPin(coordinate: item.location, tint: .accentColor)
            //B (Marker) New style static
//            MapMarker(coordinate: item.location, tint: .accentColor)
            
            //C (custom basic) it could be interactive
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//
//            }//: Anotation
            
            //D Advanced annotation (it could be interractive)
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
            
        }//:Map
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                .frame(width:48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitud:")
                            .font(.footnote)
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                        
                        
                    }//: HStack
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundColor(.white)
                    }//:HStack
                    
                }//:VStack
                
            }//: HStack
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
            
                .background(
                    Color.black
                        .cornerRadius(8)
                        .opacity(0.6)
                )
                .padding()
            , alignment: .top
        )
    }
}

// MARK: - Preview

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
