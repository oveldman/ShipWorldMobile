//
//  MyLayout.swift
//  ShipWorld
//
//  Created by Oscar Veldman on 19/02/2022.
//

import SwiftUI

struct MyLayout<Content: View>: View {
    var backgroundImage: String
    
    let content: () -> Content
    init(backgroundImage: String, @ViewBuilder content: @escaping () -> Content) {
        self.backgroundImage = backgroundImage
        self.content = content
    }
    
    var body: some View {
        NavigationView() {
            ZStack{
                MyBackgroundImage(imageName: backgroundImage)
                content()
            }
        }.accentColor(.black)
    }
}

struct MyLayout_Previews: PreviewProvider {
    static var previews: some View {
        MyLayout(backgroundImage: "HeavyCargo") {
        }
    }
}
