//
//  Home.swift
//  RedBook
//
//  Created by user257633 on 2/25/24.
//

import SwiftUI



struct HomeView: View {
    @State private var select = 0
    @State private var showSearch = false
    var body: some View {

        NavigationView {
            VStack{
                HStack{
                    Button{
                        
                    }label:{ Image(systemName: "globe.europe.africa")}
                        .foregroundColor(.black)

                    Spacer()
                    Button {
                        
                        select = 0
                        
                    }label: {
                        Text("Following")
                            .foregroundColor(select == 0
                                             ?.black:.gray)
                    }
                    
                    Button {
                        select = 1
                        
                        
                    }label: {
                        Text("Discover")
                            .foregroundColor(select == 1
                                             ?.black:.gray)            }
                    Button {
                        select = 2
                        
                    }label: {
                        Text("Nearby")
                            .foregroundColor(select == 2
                                             ?.black:.gray)            }
                    
                    Spacer()
                    Button{
                        withAnimation{
                            showSearch = true
                        }
                        
                    }label:{ Image(systemName: "magnifyingglass")}
                        .foregroundColor(.black)
                    
                }
                .padding()
              
 
                TabView(selection: $select){
                    FollowingView()
                        .tag(0)
                    DiscoverView()
                        .tag(1)
                    NearbyView()
                        .tag(2)
               
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                }
               
                
            }
            .navigationBarHidden(true)
            .fullScreenCover(isPresented: $showSearch) {
                           Search(showSearch: $showSearch)
                       }
        }

        }

    




struct HomeView_Previews: PreviewProvider {

    static var previews: some View {

        HomeView()

    }

}


