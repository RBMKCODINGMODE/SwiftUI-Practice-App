//
//  Discover.swift
//  RedBook
//
//  Created by user257633 on 2/20/24.
//

import SwiftUI


struct DiscoverView: View{
    @State var isshowdetail = false
    var body: some View{
        ZStack{
            ScrollView{
                HStack(alignment:.top){
                    VStack{
                        NavigationLink(destination: CardDetail(isshowdetail: $isshowdetail)) {
                            CardD(text: "Crazy with Codin'", image: "image2", username: "username", likes: "8.2k", profile: "image3")
                        }
                        CardD(text:"chillin'", image:"E",username: "ca[]",likes: "1.5k",profile:"image3")
                        CardD(text:"is that true?", image:"B",username: "user2591",likes: "2.5K",profile:"imageP1")
                        
                        CardD(text:"Great men", image:"D",username: "cw24",likes: "6.3k",profile:"imageP3")
                    }

                    
                    .onTapGesture {
                        withAnimation{
                            isshowdetail.toggle()
                        }
                    }
                    VStack{
                        CardD(text:"lol", image:"A",username: "sdf",likes: "9.3K",profile:"imageBird")
                        CardD(text:"masterpiece", image:"F",username: "cvs90",likes: "1.2k",profile:"Profile")
                        CardD(text:"cool", image:"C",username: "666",likes: "1.6K",profile:"imageRobot")
                                          }
                }
            }
            .ignoresSafeArea()
            .background(.gray .opacity(0.1))
        }
        if isshowdetail{
            CardDetail(isshowdetail: .constant(false))
        }
        
    }
}
struct DiscoverView_Previews: PreviewProvider{
    static var previews: some View{
        DiscoverView()
    }
}
