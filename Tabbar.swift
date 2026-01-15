//
//  Tabbar.swift
//  RedBook
//
//  Created by user257633 on 2/9/24.
//
import SwiftUI

struct Tabbar: View {
    enum Selection {
        case home
        case shopping
        case messages
        case account
    }
    
    @Binding var selection: Selection
    
    var body: some View {
        HStack {
            // Home按钮
            Button(action: {
                self.selection = .home
            }) {VStack{
                Image(systemName: "house.fill")
                Text("Home")
                  }
                    .foregroundColor(selection == .home ? .red : .gray)
            }
            Spacer()
            
            // Shopping按钮
            Button(action: {
                self.selection = .shopping
            }) {VStack{
                Image(systemName: "cart.fill")
                Text("Shopping")
            }
                    .foregroundColor(selection == .shopping ? .red : .gray)
            }
            
            Spacer()
            
            // 特殊的中间按钮
            Button(action: {
                // 在这里执行特殊的操作
            }) {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 15)
                    .background(Color.red)
                    .cornerRadius(8)
            }
             // 根据需要调整，保持Tabbar布局均衡
            
            Spacer()
            
            // Messages按钮
            Button(action: {
                self.selection = .messages
            }) {VStack{
                Image(systemName: "message.fill")
                Text("Messages")
              }
            .foregroundColor(selection == .messages ? .red : .gray)
            }
            
            Spacer()
            
            // Account按钮
            Button(action: {
                self.selection = .account
            }) {VStack{
                Image(systemName: "person.fill")
                Text("Me")
                
            }
                    .foregroundColor(selection == .account ? .red : .gray)
            }
        }
        .padding()
        
    }
    
}


struct Tabbar_Previews: PreviewProvider {
    // 创建一个Selection的实例
    @State static var selection: Tabbar.Selection = .home

    static var previews: some View {
        // 将创建的Selection实例绑定到Tabbar的selection属性
        Tabbar(selection: $selection)
    }
}
