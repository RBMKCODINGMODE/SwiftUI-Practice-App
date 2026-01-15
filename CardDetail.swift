//
//  CardDetail.swift
//  RedBook
//
//  Created by user257633 on 2/27/24.
//

import SwiftUI


struct CardDetail: View{
    @State var pinlun = ""
    @Binding var isshowdetail : Bool
    @State private var isLiked = false
    @State private var isFavorite = false
    @State private var isFollowing = false
    var body: some View{
        NavigationView{
            VStack{
                
                    HStack(spacing:15){
                        Button{
                            withAnimation{
                                isshowdetail.toggle()
                            }
                            
                        }label: {
                            Image(systemName: "chevron.backward")
                                .font(.system(size: 25))
                                .foregroundColor(.black)
                        }
                       
                        Image("image3")
                            .CircleImage(width: 60)
                        Text("username")
                        Spacer()
                        HStack{
                            Button {
                                self.isFollowing.toggle()
                            } label: {
                                Text(isFollowing ? "Following" : "Follow")
                                    .foregroundColor(isFollowing ? .white : Color("red"))
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 18)
                                    .font(.system(size: isFollowing ? 12 : 16)) // 当isFollowing为true时字体大小减小
                                    .frame(minWidth: 90, minHeight: 30) // 设置按钮的最小尺寸
                                    .background(isFollowing ? Color("red") : .white)
                                    .cornerRadius(20)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(Color("red"), lineWidth: 1)
                                    )
                            }


                            Image(systemName:"square.and.arrow.up")
                                .font(.system(size: 25))
                        }
                        .padding(.trailing)
                    }
                    .padding(.horizontal)
                ScrollView{
                    TabView{
                        Image("image2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .tag(1)
                        Image("imageRobot")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .tag(2)
                        Image("imageCode")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .tag(0)
                    }
                    .tabViewStyle(.page)
                    .frame(height:500)
                    VStack(spacing:20){
                        HStack{
                            Text("Crazy with codin'.....")
                            Spacer()
                        }
                        HStack{
                            Text("02-21 North York")
                            Spacer()
                            
                            Button{
                            }label: {
                                HStack{
                                    Image(systemName: "face.smiling")
                                    Text("Dislike")
                                }
                                .padding(3)
                                .background(.white)
                                .padding(1)
                                .background(.gray,in:
                                                RoundedRectangle(cornerRadius: 20))
                            }
                            
                        }
                        .foregroundColor(.gray)
                    }
                    .padding()
                    Divider()
                    //comment
                    HStack{
                        Text("1305 comments in total")
                        Spacer()
                        
                    }
                    .padding(.horizontal)
                    .foregroundColor(.gray)
                    HStack{
                        Image("profile")
                            .CircleImage(width: 40)
                        TextField("Give a comment if you like it.",text: $pinlun)
                            .padding(.vertical,4)
                            .padding(.horizontal,10)
                            .background(.gray.opacity(0.1),in:
                                            RoundedRectangle(cornerRadius: 20))
                        Spacer()
                    }
                    .padding(.horizontal)
                   
                        ForEach(0..<8){ item in
                            VStack{
                                HStack(spacing:20){
                                    Image("Profile")
                                        .CircleImage(width: 40)
                                    VStack(alignment: .leading){
                                        Text("7TGB")
                                            .foregroundColor(.gray)
                                        Text("C'mon")
                                        
                                    }
                                    Spacer()
                                    
                                    VStack{
                                        Image(systemName: "heart")
                                        Text("3k")
                                    }
                                    .foregroundColor(.gray)
                                }
                                
                                .padding(.horizontal)
                                Divider()
                                    .padding(.leading,70)
                            }
                        }
                    }
                
                //bar
                HStack(spacing:20){
                   
                TextField("Say something...", text: $pinlun)
                        .padding(.vertical,10)
                        .padding(.horizontal,10)
                        .background(.gray.opacity(0.2),in:
                        RoundedRectangle(cornerRadius: 20))
                    
                    Spacer()
                    HStack(spacing:18){
                     
                        Button(action: {
                            self.isLiked.toggle()
                        }) {
                            HStack(spacing: 0) {
                                Image(systemName: isLiked ? "heart.fill" : "heart")
                                    .font(.system(size: 20))
                                    .foregroundColor(isLiked ? .red : .black)
                                Text("8.2k")
                            }
                        }
                        
                        
                        Button(action: {
                            
                            self.isFavorite.toggle()
                        }) {
                            HStack(spacing: 0) {
                                Image(systemName: isFavorite ? "star.fill" : "star")
                                    .font(.system(size: 20))
                                    .foregroundColor(isFavorite ? .yellow : .black)
                                Text("6.7K")
                            }
                        }
                        
                        Button{
                        }label:{
                            HStack(spacing:0){
                                Image(systemName: "ellipsis.bubble")
                                    .font(.system(size:20))
                                Text("1.3K")
                            }
                        }
                    }                .foregroundColor(.black)
                .frame(width:UIScreen.main.bounds.width * 0.6 - 10)
                }
                .padding(.horizontal)
                
            }
           
        }
        .navigationBarBackButtonHidden(true)
    }
}


struct CardDetail_Previews: PreviewProvider{
    static var previews: some View{
        CardDetail(isshowdetail: .constant(false))
    }
}
