//
//  CardD.swift
//  RedBook
//
//  Created by user257633 on 2/29/24.
//
import SwiftUI


struct CardD: View {
    var text = ""
    var image = ""
    var username = ""
    var likes = ""
    var profile = ""
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
                Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            
            Text(text)
                .foregroundColor(.black)
            
            HStack(spacing: 0) {
                
                Image(profile)
                    .CircleImage(width: 40)
                    
                Text(username)
                    .foregroundColor(.black)
                Spacer()
                
                Image(systemName: "heart")
                    .foregroundColor(.black)
                
                Text(likes)
                .foregroundColor(.black)
            }
                
                    .font(.footnote)
                
            }
   
        .frame(width: UIScreen.main.bounds.width / 2 - 11)
       
            .background(.white,in:RoundedRectangle(cornerRadius: 5))
            .padding(3)
        
       
    }
  
}
    


struct CardD_Previews: PreviewProvider {

    static var previews: some View {

        ContentView()

    }

}

