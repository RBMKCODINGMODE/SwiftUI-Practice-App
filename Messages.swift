//
//  Messages.swift
//  RedBook
//
//  Created by user257633 on 2/25/24.
//

import SwiftUI

struct Messages: View{
   
    var body: some View{
        NavigationView{
            VStack{
                HStack{
                    Button{
                    }label:{Text("More Groups")
                     }
                    .opacity(0)
                    Spacer()
                    Text("Messages")
                        .font(.title2)
                    Spacer()
                    Button{
                    }label:{Text("More Groups")
                     }
                }
                .foregroundColor(.black)
                .padding()
                ScrollView{
                    HStack{
                        Spacer()
                        Button{
                        }label: {
                            VStack{
                                
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.pink)
                                    .font(.system(size: 23))
                                    .padding(10)
                                    .background(.pink.opacity(0.2),in: RoundedRectangle(cornerRadius: 10))
                                Text("Likes&Collect")
                                    .font(.system(size: 15))
                            }
                            .foregroundColor(.black)
                        }
                        Spacer()
                        Button{
                        }label: {
                            VStack{
                                Image(systemName: "person.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 23))
                                    .padding(10)
                                    .background(.blue.opacity(0.2),in: RoundedRectangle(cornerRadius: 10))
                                Text("New Followers")
                                    .font(.system(size: 15))
                            }
                            .foregroundColor(.black)
                        }
                        Spacer()
                        Button{
                        }label: {
                            VStack{
                                Image(systemName: "ellipsis.bubble.fill")
                                    .foregroundColor(.green)
                                    .font(.system(size: 23))
                                    .padding(10)
                                    .background(.green.opacity(0.2),in: RoundedRectangle(cornerRadius: 10))
                                Text("Comments&@")
                                    .font(.system(size: 15))
                            }
                            .foregroundColor(.black)
                        }
                        Spacer()
                    }
                    .padding()
                    ForEach(0..<5){item in
                        
           //messages roll
                            VStack{
                                HStack{
                                    Image("image3")
                                        .CircleImage(width: 62)
                                    VStack(alignment:.leading,spacing:8){
                                        Text("username")
                                        Text("Hello!Let's make friends!")
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                    Text("12/15")
                                        .padding()
                                }
                            }
                        
                    }
   
                    
                }
               
            }
            .navigationBarBackButtonHidden()
            }
        }
        
    }



struct Messages_Previews: PreviewProvider{
    static var previews: some View{
        Messages()
    }
}
