//
//  Search.swift
//  RedBook
//
//  Created by user257633 on 2/26/24.
//

import SwiftUI

struct Search: View {
    @State var searchText: String = ""
    @Binding var showSearch: Bool
    var body: some View {
        VStack {
            HStack {
                TextField("Search", text: $searchText)
                    .padding(7)
                    .padding(.horizontal,25)
                    
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 8)
                            
                            if !searchText.isEmpty {
                                Button(action: {
                                    self.searchText = ""
                                }) {
                                    Image(systemName: "multiply.circle.fill")
                                        .foregroundColor(.gray)
                                        .padding(.trailing, 8)
                                }
                            }
                        }
                    )
                    .padding(.horizontal, 10)
                    .onSubmit {
                        // 实现搜索功能
                    }
                    .accessibilityLabel("Search field")

                Button("Cancel") {
                    withAnimation {
                        self.showSearch = false
                    }
                }
                .padding(.trailing, 10)
                .accessibilityLabel("Cancel search")
            }
            .padding()
            ScrollView{
                //term
                VStack{
                    HStack{
                        Text("History")
                            .font(.system(size: 18))
                        Spacer()
                        Image(systemName: "trash")
                            .foregroundColor(.gray)
                    }
                    HStack{
                        Text("static friction  ")
                            .buttonStyleWhite()
                        Text("The Lonset Johns")
                        .buttonStyleWhite()
                        Spacer()
                    }
                    
                }
                VStack(spacing:20){
                    HStack{
                        Text("Discover")
                            .font(.system(size: 18))
                        Spacer()
                        Image(systemName: "arrow.clockwise")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    
                    HStack(spacing:30){
                        VStack(alignment:.leading,spacing:15){
                            Text("fun facts about water")
                            Text("fun facts about water")
                            Text("fun facts about water")
                        }
                        VStack(alignment:.leading,spacing:15){
                            Text("fun facts about water")
                            Text("fun facts about water")
                            Text("fun facts about water")
                        }
                        Spacer()
                    }
                    
                }
                .padding(.vertical)
                
                VStack{
                    HStack{
                        Text("Trends for you")
                            .font(.system(size: 18))
                            .foregroundColor(.orange)
                        Spacer()
                    }
                    VStack(spacing:15){
                        HStack{
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.red)
                            Text("When can I finish this shittt...")
                            Spacer()
                            Text("1020k")
                            Text("-")
                        }
                        Divider()
                        HStack{
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.orange)
                            Text("When can I finish this shittt...")
                            Spacer()
                            Text("902k")
                            Image(systemName: "arrow.up")
                                .font(.footnote)
                                .foregroundColor(.red)
                        }
                        Divider()
                        HStack{
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.yellow)
                            Text("When can I finish this shittt...")
                            Spacer()
                            Text("502k")
                            Image(systemName: "arrow.up")
                                .font(.footnote)
                                .foregroundColor(.orange)
                        }
                        Divider()
                        HStack{
                            Circle()
                                .frame(width: 5, height: 5)
                                .foregroundColor(.gray)
                            Text("When can I finish this shittt...")
                            Spacer()
                            Text("202k")
                            Image(systemName: "arrow.up")
                                .font(.footnote)
                                .foregroundColor(.orange.opacity(0.5))
                        }
                        
                       

                        
                    }
                    
                }
            }
        
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
        .padding(.horizontal)
        .background(.white)
    }
}
struct Search_Previews: PreviewProvider{
    static var previews: some View{
        Search(showSearch: .constant(false))
    }
}
