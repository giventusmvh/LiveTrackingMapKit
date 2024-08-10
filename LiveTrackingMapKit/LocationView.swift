//
//  ContentView.swift
//  LiveTrackingMapKit
//
//  Created by Giventus Marco Victorio Handojo on 08/08/24.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    @StateObject var viewModel = LocationViewViewModel()
    
    var body: some View {
        VStack {
            Map(coordinateRegion: viewModel.binding,showsUserLocation: true,userTrackingMode: .constant(.follow))
                .edgesIgnoringSafeArea(.all)
                .onAppear(perform: {
                    viewModel.checkIfLocationIsEnabled()
                })
            
            

        }
        
    }
}



#Preview {
    LocationView()
}


