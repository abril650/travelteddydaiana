//
//  CountriesView.swift
//  travelteddy
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct CountriesView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: MexicoInfoView()) {
                Text("Mexico")
            }
            
            NavigationLink(destination: IndiaInfoView()) {
                Text("India")
            }
        }
        
        
        
        
    }
}

struct CountriesView_Previews: PreviewProvider {
    static var previews: some View {
        CountriesView()
    }
}
