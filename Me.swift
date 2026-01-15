//
//  Me.swift
//  RedBook
//
//  Created by user257633 on 2/25/24.
//

import SwiftUI


struct MeView: View{
   
    @State var select = 0
    var body: some View{
        NavigationView{
            VStack{
                ScrollView{
                    ZStack{
                    Image("ProfileBackground")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 350)
                            .clipped()
                        
                        Color.gray.opacity(0.5)
                        
                        
                        VStack{
                            
                            HStack{
                                Image(systemName: "line.3.horizontal")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                Spacer()
                                Image(systemName: "square.and.arrow.up")
                                    .font(.system(size: 20))
                                .foregroundColor(. white)
                            }
                            .padding(.horizontal)
                            VStack{
                                HStack{
                                    Image("Profile")
                                        .CircleImage(width: 100)
                                    VStack(alignment:.leading,spacing: 8){
                                        Text("RBMK")
                                            .font(.title)
                                            .foregroundColor(.white)
                                        Text("HongBook ID: 9272923069")
                                        Text("IP Address: Canada")
                                            .font(.footnote)
                                            .foregroundColor(.white)
                                    }
                                    Spacer()
                                }
                                Button{
                                }label: {
                                    HStack{
                                        Text("Click here to fill in the profile.")
                                        Image(systemName: "pencil")
                                        Spacer()
                                    }
                                    .foregroundColor(.white)
                                    .padding(.horizontal)
                                }
                                HStack{
                                    Button{
                                        
                                    }label: {
                                        
                                        Text("20 years old")
                                            .font(.footnote)
                                            .foregroundColor(.white)
                                            .padding(.vertical,2)
                                            .padding(.horizontal,20)
                                            .background(.ultraThinMaterial,in:
                                                            RoundedRectangle(cornerRadius:  10))
                                    }
                                    Button{
                                        
                                    }label:{
                                        Text("Software Developer")
                                            .font(.footnote)
                                            .foregroundColor(.white)
                                            .padding(.vertical,2)
                                            .padding(.horizontal,20)
                                            .background(.ultraThinMaterial,in:
                                                            RoundedRectangle(cornerRadius:  10))
                                    }
                                    
                                    Spacer()
                                }
                                .padding(.horizontal)
                                .padding(.bottom)
                                HStack(spacing:15){
                                    VStack{
                                        Text("5")
                                        Text("Following")
                                            .font(.caption2)
                                    }
                                    VStack{
                                        Text("8.6k")
                                        Text("Followers")
                                            .font(.caption2)
                                    }
                                    VStack{
                                        Text("1.2M")
                                        Text("Likes&Col")
                                            .font(.caption2)
                                    }
                                    Spacer()
                                    
                                    Button{
                                        
                                    }label:{
                                        
                                        Text("Profile")
                                            .foregroundColor(.white)
                                            .padding(.vertical,2)
                                            .padding(.horizontal,5)
                                            .background(.ultraThinMaterial,in:
                                                            RoundedRectangle(cornerRadius: 10))
                                                 }
                                    Button{
                                        
                                    }label:{
                                        
                                        Image(systemName: "gearshape")
                                            .foregroundColor(.white)
                                            .padding(.vertical,2)
                                            .padding(.horizontal,20)
                                            .background(.ultraThinMaterial,in:
                                                            RoundedRectangle(cornerRadius: 10))
                                    }
                                    
                                }
                                .padding(.horizontal)
                                .foregroundColor(.white)
                            }
                        }
                    }
                    //body
                                   VStack{
                                       HStack(spacing:40){
                                           Button{
                                               select = 0
                                                   
                                           }label:{
                                         Text("Notes")
                                                   .foregroundColor(select == 0
                                                                    ?.black:.gray)                                                                          }
                                           Button{
                                               select = 1
                                           }label:{
                                    Text("Collections")
                                               .foregroundColor(select == 1 ? .black : .gray)                                           }
                                           Button{
                                           select = 2
                                           }label:{
                                       Text("Likes")
                                                   .foregroundColor(select == 2 ? .black : .gray)
                                           }
                                       }
                                       .padding(10)
                                       TabView(selection:$select){
                                           ScrollView{
                                               ForEach(0..<6){ item in
                                                 CardA()
                                                   
                                               }
                                           
                                           }
                                           .tag(0)
                                           VStack{
                                              
                                            Text("None Collections for now.")
                                           }
                                           .tag(1)
                                           VStack{
                                           Text("None Likes for now.")
                                           }
                                           .tag(2)
                                       }
                                       .padding(.top,20)
                                       .tabViewStyle(.page(indexDisplayMode: .never))
                                       .frame(minHeight:500)
                                   }
                                   .foregroundColor(.black)
                                   .background(.white,in: RoundedRectangle(cornerRadius: 30))
                                   .offset(y:-32)
                                   
                          }

                .ignoresSafeArea()
               
                }
            .ignoresSafeArea()
            .navigationBarHidden(true)
            }
        }
}

struct MeView_Previews: PreviewProvider{
    static var previews: some View{
      MeView()
    }
}
