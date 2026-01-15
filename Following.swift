//
//  Following.swift
//  RedBook
//
//  Created by user257633 on 2/20/24.
//

import SwiftUI


struct FollowingView: View{

    var body: some View{
        ScrollView{
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    
                    VStack(spacing:0){
                        Image("imageP5")
                            .CircleImage(width: 105)
                        Text("username")
                    }
                    VStack(spacing:0){
                        Image("imageP6")
                            .CircleImage(width: 100)
                        Text("username")
                    }
                    VStack(spacing:0){
                        Image("imageP1")
                            .CircleImage(width: 100)
                        Text("username")
                    }
                    VStack(spacing:0){
                        Image("imageP3")
                            .CircleImage(width: 100)
                        Text("username")
                    }
                    VStack(spacing:0){
                        Image("imageP2")
                            .CircleImage(width: 100)
                        Text("username")
                    }
                    VStack(spacing:0){
                        Image("imageP4")
                            .CircleImage(width: 100)
                        Text("username")
                    }
                                        
                            
                    
                    Spacer()
                }
            }
          //body
            ForEach(0..<6){ item in
              CardF()
                
            }
 
            
            
        }
    }
    
}

struct FollowingView_Previews: PreviewProvider{
    static var previews: some View{
        FollowingView()
    }
}

