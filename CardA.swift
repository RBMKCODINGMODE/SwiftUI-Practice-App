//
//  CardA.swift
//  RedBook
//
//  Created by user257633 on 2/29/24.
//

import SwiftUI

struct CardA: View{
    @State var text = ""
    @State private var isLiked = false
    @State private var isFavorite = false
    var body: some View{
        VStack{
            HStack(alignment:.center){
                Image("Profile")
                    .CircleImage(width: 50)
                Text("RBMK")
                    .foregroundColor(.black)
                Text("Feb. 29")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                
                Spacer()
                Button{
                }label:{ Image(systemName: "ellipsis")}
            }
            .padding(.trailing,8)
            .foregroundColor(.gray)
            
            Image("imageCode")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
    //buttons
            HStack(spacing:20){
                Button{
                }label:{
                    HStack(spacing:0){
                        Image(systemName: "square.and.arrow.up")
                        .font(.system(size:23))}
                }
                Spacer()
                Button(action: {
                    self.isLiked.toggle()
                }) {
                    HStack(spacing: 0) {
                        Image(systemName: isLiked ? "heart.fill" : "heart")
                            .font(.system(size: 23))
                            .foregroundColor(isLiked ? .red : .black)
                        Text("9.9k")
                    }
                }
                
                
                Button(action: {
                    
                    self.isFavorite.toggle()
                }) {
                    HStack(spacing: 0) {
                        Image(systemName: isFavorite ? "star.fill" : "star")
                            .font(.system(size: 23))
                            .foregroundColor(isFavorite ? .yellow : .black)
                        Text("21K")
                    }
                }
                
                Button{
                }label:{
                    HStack(spacing:0){
                        Image(systemName: "ellipsis.bubble")
                            .font(.system(size:23))
                        Text("1.6K")
                    }
                }
            }
        .foregroundColor(.black)
        .padding(10)
                
         
            HStack{
                Text("Solve your math problems by Java.")
            }
            HStack{
                Image("Profile")
                    .CircleImage(width: 40)
                TextField("Say what you like here...", text: $text)
                Spacer()
            }
            .background(.gray.opacity(0.1),in:
                            RoundedRectangle(cornerRadius: 10))
            .padding(.horizontal,10)
        }
        .padding(.vertical)
    }
}

struct CardA_Previews: PreviewProvider{
    static var previews: some View{
        CardA()
    }
}
