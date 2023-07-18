//
//  ContentView.swift
//  travelteddy
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text("Travel Teddy")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.424, saturation: 0.709, brightness: 0.522))
                    .lineLimit(100)
                
                Spacer()
                
                NavigationLink(destination: CountriesView()) {
                    Text("Get Started")
                       
                       // .foregroundColor(Color.black)
                      //  .padding(.all, 30.0
                       // .background(Color(red: 1.0, green: 0.5490196078431373, blue: 0.00392156862745098))
                        //.cornerRadius(15)
                }
                Spacer()
                //   Image()
                
                
                
            } // end of Vstack
            ZStack{
        
                NavigationStack {
                    HStack{
                        
                        NavigationLink(destination: MexicoInfoView()) {
                            Text("Mexico")
                            
                        }
                        .foregroundColor(.red)
                        .background(.blue)
                        
                        NavigationLink(destination: IndiaInfoView()) {
                            Text("India")
                        }
                    }//hstack
                }//navstack
            }//zstack
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
