//
//  Extension.swift
//  RedBook
//
//  Created by user257633 on 2/21/24.
//

import SwiftUI


extension Image{
    func CircleImage(width:CGFloat) -> some View{
        self
            .resizable()
        
            .aspectRatio(contentMode: .fit)
        
            .mask(Circle())
            .frame(width: width,height: width)
    }
}

extension String : Identifiable{
    public var id : Int {
        return self.hashValue
    }
}
