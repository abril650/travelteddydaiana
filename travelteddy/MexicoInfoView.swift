//
//  MexicoInfoView.swift
//  travelteddy
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct MexicoInfoView: View {
    var body: some View {
        Text("Welcome to Mexico!")
        NavigationStack {
            HStack {
               
                VStack {
                    NavigationLink(destination: MexicoCultureView()) {
                        Text("Culture")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    NavigationLink(destination: MexicoNormsView()) {
                        Text("Norms")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
                VStack{
                    NavigationLink(destination: MexicoFoodsView()) {
                        Text("Food")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    NavigationLink(destination: MexicoVisitView()) {
                        Text("Visits")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                }
                    
                
            }
            

        }

        
      
    }
}

struct MexicoInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MexicoInfoView()
    }
}


