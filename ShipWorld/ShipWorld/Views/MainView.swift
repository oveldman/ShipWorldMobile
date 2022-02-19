//
//  ContentView.swift
//  ShipWorld
//
//  Created by Oscar Veldman on 19/02/2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView() {
            ZStack{
                MyBackgroundImage(imageName: "HeavyCargo")
                VStack {
                    MyButton(destination: AnyView(NewGameView()), labelName: "New Game")
                    MyButton(destination: AnyView(NewGameView()), labelName: "Load Game")
                    MyButton(destination: AnyView(NewGameView()), labelName: "Settings")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
