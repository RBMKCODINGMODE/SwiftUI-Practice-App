//
//  ContentView.swift
//  RedBook
//
//  Created by user257633 on 2/8/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tabbar.Selection = .home // 将 `selection` 声明为非静态的，并且为私有的

    var body: some View {
        VStack {
            // 根据选中的Tab显示不同的视图
            switch selection { // 移除 `$`，直接使用 `selection`
            case .home:
                HomeView() // 自定义的HomeView
            case .shopping:
                ShoppingView() // 自定义的ShoppingView
            case .messages:
                Messages() // 自定义的MessagesView
            case .account:
                MeView() // 自定义的AccountView
            }
            Tabbar(selection: $selection) // 使用 `$selection` 来创建一个 `Binding`
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


