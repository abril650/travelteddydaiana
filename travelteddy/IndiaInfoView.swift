//
//  IndiaInfoView.swift
//  travelteddy
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct IndiaInfoView: View {
    var body: some View {
        Text("Welcome to India!")
        NavigationStack {
            HStack {
             
                VStack {
                    NavigationLink(destination: IndiaCultureView()
                    ) {
                        Text("Culture")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    
                    
                    NavigationLink(destination: IndiaNormView()) {
                        Text("Norms")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
                VStack {
                    NavigationLink(destination: IndiaFoodsView()) {
                        Text("Food")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    NavigationLink(destination: IndiaVistsView()) {
                        Text("Visits")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
                    
                
            }
            

        }
       
    }
}

struct IndiaInfoView_Previews: PreviewProvider {
    static var previews: some View {
        IndiaInfoView()
    }
}
