//
//  MexicoVisitView.swift
//  travelteddy
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct MexicoVisitView: View {
    
    @State private var jalisco = false
    @State private var mexicoCity = false
    @State private var chichenItza = false
    
    
    var body: some View {
            ZStack{
                
                Color(UIColor(red: 245/255.0, green: 222/255, blue: 179/255.0, alpha: 1))
                          .ignoresSafeArea()
                
                VStack {
                    Text("Mexico")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    Text("Places to visit")
                        .font(.title)
                    Spacer()
                }
                ZStack{
                    Image("mexico1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Button(action: {
                        
                        withAnimation(.linear(duration: 1)) {
                            
                            self.jalisco = true
                            self.mexicoCity = false
                            self.chichenItza = false
                            
                        }
                        
                    }, label: {
                        Text("📍")
                    })
                    .offset(x:-45, y:40)
                    .font(.largeTitle)
                    // Jalisco pin
                    
                    
                    Button(action: {
                        
                        withAnimation(.linear(duration: 1)) {
                            
                            self.jalisco = false
                            self.mexicoCity = true
                            self.chichenItza = false
                            
                        }
                        
                    }, label: {
                        Text("📍")
                    })
                    .offset(x:35, y:70)
                    .font(.largeTitle)
                    // mexico city pin
                    
                    Button(action: {
                        
                        withAnimation(.linear(duration: 1)) {
                            
                            self.jalisco = false
                            self.mexicoCity = false
                            self.chichenItza = true
                            
                        }
                        
                    }, label: {
                        Text("📍")
                    })
                    .offset(x:160, y:35)
                    .font(.largeTitle)
                    // chicken-itza pin
                    
                    
                }
                
                if $jalisco.wrappedValue {
                    jaliscoView()
                }
                
                if $mexicoCity.wrappedValue {
                    mexicoCityView()
                }
                if $chichenItza.wrappedValue {
                    chichenItzaView()
                }
                
            } // end of Vstack
    } // end of body
    
    private func jaliscoView() -> some View {
        
        VStack (spacing : 5) {
            
            VStack {
                
                Text(" Welcome to Jalisco!").font(.title).foregroundColor(.black)
                
               Image("jalisco")
                    Text("One of our app creators’ family originates from this tiny town in the state of Jalisco, Mexico. The best time to be in this town is between February 11-21, when the Carnival of Tecolotlan takes place in the main plaza of the town. During these ten days, there will be nonstop dancing, music, carnival games and rides, concerts, and delicious Mexican food and drink.")
                
            }
            
            Button(action: {
                
                withAnimation {
                    
                    self.jalisco = false
                    
                }
            }, label: {
                Text("Close")
            })
            
        }
        
        .padding()
        .frame(width: 350, height: 550)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 30 )
        
    }
    
    private func mexicoCityView() -> some View {
        
        VStack (spacing : 5) {
            
            VStack {
                
                
                Text("Welcome to Mexico City!").font(.title).foregroundColor(.black)
                
                Image("mexicocity")
                Text("The National Museum of Anthropology: The National Museum of Anthropology is a national museum in Mexico City, Mexico. It is the largest and most visited museum in the country, as it houses many ancient indigenous treasures of the Native people that lived in Mexico before being conquered by Spanish conquistadors. The most popular exhibits include two enormous stone Olmec heads and the legendary Aztec Sun Stone.")
                    
            }
            
            Button(action: {
                
                withAnimation {
                    
                    self.mexicoCity = false
                    
                }
            }, label: {
                Text("Close")
            })
            
        }
        
        .padding()
        .frame(width: 350, height: 600)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 30 )
        
    }
    
    private func chichenItzaView() -> some View {
        
        VStack (spacing : 5) {
            
            VStack {
                
                Text("Welcome to Chichen-Itza!").font(.title).foregroundColor(.black)
                
                Image("chichenitza")
                Text("These ancient ruins are home to some of the most world-famous ancient buildings and architecture, including the Great Ball Court and the Temple of Warriors.")
                
            }
            
            Button(action: {
                
                withAnimation {
                    
                    self.chichenItza = false
                    
                }
            }, label: {
                Text("Close")
            })
            
        }
        
        .padding()
        .frame(width: 350, height: 390)
        .background(Color.white)
        .cornerRadius(30)
        .shadow(radius: 30 )
        
    }
    
} // end of struct
    



struct MexicoVisitView_Previews: PreviewProvider {
        static var previews: some View {
            MexicoVisitView()
        }
    }
    

