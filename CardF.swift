//
//  CardF.swift
//  RedBook
//
//  Created by user257633 on 2/21/24.
//

import SwiftUI


struct CardF: View{
    @State var text = ""
    @State private var isLiked = false
    @State private var isFavorite = false
    var body: some View{
        VStack{
            HStack(alignment:.center){
                Image("image3")
                    .CircleImage(width: 50)
                Text("username")
                    .foregroundColor(.black)
                Text("3 hours ago")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                
                Spacer()
                Button{
                }label:{ Image(systemName: "ellipsis")}
            }
            .padding(.trailing,8)
            .foregroundColor(.gray)
            
            Image("imageBird")
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
                        Text("1.2M")
                    }
                }
                
                
                Button(action: {
                    
                    self.isFavorite.toggle()
                }) {
                    HStack(spacing: 0) {
                        Image(systemName: isFavorite ? "star.fill" : "star")
                            .font(.system(size: 23))
                            .foregroundColor(isFavorite ? .yellow : .black) 
                        Text("306K")
                    }
                }
                
                Button{
                }label:{
                    HStack(spacing:0){
                        Image(systemName: "ellipsis.bubble")
                            .font(.system(size:23))
                        Text("137K")
                    }
                }
            }
        .foregroundColor(.black)
        .padding(10)
                
         
            HStack{
                Text("Her name 's Mango 🥭 ~ She is a cockatiel who can sing and loves to eat melon seeds.")
            }
            HStack{
                Image("image3")
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

struct CardF_Previews: PreviewProvider{
    static var previews: some View{
        CardF()
    }
}
