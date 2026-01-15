//
//  Nearby.swift
//  RedBook
//
//  Created by user257633 on 2/20/24.
//

import SwiftUI


struct NearbyView: View{
    var body: some View{
        ScrollView{
            HStack(alignment:.top){
                VStack{
                    Card(text:"stop it", image:"image1",username: "666",locate: "29km",profile:"image3")
                    Card(text:"funny", image:"image3",username: "666",locate: "29km",profile:"image3")    }
                VStack{
                    Card(text:"lol", image:"image2",username: "666",locate: "612km",profile:"image3")
                    Card(text:"cool", image:"image3",username: "user2591",locate: "62km",profile:"image1")
                }
            }
        }
        .ignoresSafeArea()
        .background(.gray .opacity(0.2))
    }
}

struct NearbyView_Previews: PreviewProvider{
    static var previews: some View{
        NearbyView()
    }
}

