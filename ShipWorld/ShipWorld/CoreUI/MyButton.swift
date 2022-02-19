//
//  MyButton.swift
//  ShipWorld
//
//  Created by Oscar Veldman on 19/02/2022.
//

import SwiftUI

struct MyButton: View {
    var destination: AnyView
    var labelName: String
    
    let minWidth: CGFloat = 0.0
    let maxWidth: CGFloat = 200.0
    let cornerRadius: CGFloat = 40.0
    let backgroundColor: Color = Color.black
    
    var body: some View {
        NavigationLink(destination: destination)
        {
            Text(labelName)
                .padding()
                .frame(minWidth: minWidth,
                       maxWidth: maxWidth)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
                .foregroundColor(.white)
                .padding(10)
                .frame(minWidth: minWidth,
                       maxWidth: maxWidth)
                .overlay(
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(backgroundColor, lineWidth: 5)
                )
        }
    }
}

struct MyButton_Previews: PreviewProvider {
    static var previews: some View {
        MyButton(destination: AnyView(NewGameView()), labelName: "New Game")
    }
}
