//
//  ContentView.swift
//  flying app
//
//  Created by José Torres on 23/09/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var selectedTab = 0;
    // Variable create to take my current position
    @State private var position: MapCameraPosition = .userLocation(fallback: .automatic)
    
    var body: some View {
        TabView {
            VStack {
                Text("Flying App")
                    .font(.title)
                List {
                    PersonCardView(person: person1)
                        .listRowSeparator(.hidden)
                    PersonCardView(person: person2)
                        .listRowSeparator(.hidden)
                    PersonCardView(person: person1)
                        .listRowSeparator(.hidden)
                    PersonCardView(person: person2)
                        .listRowSeparator(.hidden)
                    PersonCardView(person: person1)
                        .listRowSeparator(.hidden)
                    PersonCardView(person: person2)
                        .listRowSeparator(.hidden)
                    PersonCardView(person: person1)
                        .listRowSeparator(.hidden)
                    PersonCardView(person: person2)
                        .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            }
            .tabItem {
                Image(systemName: "plus")
                Text("Home")
            }
            .tag(0)
            
            VStack{
                Map(position: $position){
                    UserAnnotation()
                }
                .mapControls {
                    MapUserLocationButton()
                    MapPitchToggle()
                }
                .onAppear{
                    CLLocationManager().requestWhenInUseAuthorization()
                }
            }
                .tabItem {
                    Image(systemName: "pencil")
                    Text("Profile")
                }
                .tag(1)
            
            Text("Hi mundo")
                .tabItem {
                    Image(systemName: "circle")
                    Text("Profile")
                }
                .tag(2)
        }
    }
}

#Preview {
    ContentView()
}
