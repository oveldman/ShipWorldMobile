//
//  MyBackgroundImage.swift
//  ShipWorld
//
//  Created by Oscar Veldman on 19/02/2022.
//

import SwiftUI

struct MyBackgroundImage: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .padding(Edge.Set(.top), 34)
            .edgesIgnoringSafeArea(.all)
            .preferredColorScheme(.dark)
    }
}

struct MyBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        MyBackgroundImage(imageName: "HeavyCargo")
    }
}
