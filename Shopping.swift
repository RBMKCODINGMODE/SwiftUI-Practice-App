//
//  Shopping.swift
//  RedBook
//
//  Created by user257633 on 2/25/24.
//

import SwiftUI


struct ShoppingView: View{
    var body: some View{
        ScrollView{
            HStack(alignment:.top){
                VStack{
                    Card(text:"stop it", image:"image1",username: "wk",locate: "29km",profile:"image3")
                    Card(text:"funny", image:"image3",username: "tianna",locate: "29km",profile:"image3")
                    Card(text:"stop it", image:"image1",username: "wk",locate: "29km",profile:"image3")
                    Card(text:"funny", image:"image3",username: "tianna",locate: "29km",profile:"image3")
                }
                VStack{
                    Card(text:"lol", image:"image2",username: "jiaoyou",locate: "612km",profile:"image3")
                    Card(text:"cool", image:"image3",username: "haofanna",locate: "62km",profile:"image1")
                    Card(text:"lol", image:"image2",username: "jiaoyou",locate: "612km",profile:"image3")
                    Card(text:"cool", image:"image3",username: "haofanna",locate: "62km",profile:"image1")
                }
            }
        }
        .ignoresSafeArea()
        .background(.gray .opacity(0.2))
    }
}

struct ShoppingView_Previews: PreviewProvider{
    static var previews: some View{
        ShoppingView()
    }
}
