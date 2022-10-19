//
//  ContentView.swift
//  TrafficLight_SwiftUI
//
//  Created by Maxim on 18.10.2022.
//

import SwiftUI

enum PepeController {
    case angry, calm, funny
}

struct ContentView: View {
    @State var angryOpacity = 0.3
    @State var calmOpacity = 0.3
    @State var funnyOpacity = 0.3

    @State var currentPepe = PepeController.funny

    var body: some View {
        VStack{
            VStack {
                ImageView(image: "angryPepe", opacity: angryOpacity)
                ImageView(image: "calmPepe", opacity: calmOpacity)
                ImageView(image: "funnyPepe", opacity: funnyOpacity)
            }
            Spacer()
            Button {
                buttonPressed()
            } label: {
                Text("Go PEPE")
                    .padding()
                    .tint(.white)
                    .background(.blue)
                    .cornerRadius(10)
            }
            .padding()
        }
    }

    func buttonPressed() {
        switch currentPepe {
        case .angry:
            angryOpacity = 0.3
            calmOpacity = 1
            currentPepe = PepeController.calm
        case .calm:
            calmOpacity = 0.3
            funnyOpacity = 1

            currentPepe = PepeController.funny
        case .funny:
            angryOpacity = 1
            funnyOpacity = 0.3
            currentPepe = PepeController.angry
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

