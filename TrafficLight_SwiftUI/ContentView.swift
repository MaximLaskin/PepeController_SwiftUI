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
    @State var angryPepeImage = ImageView(image: "angryPepe")
    @State var calmPepeImage = ImageView(image: "calmPepe")
    @State var funnyPepeImage = ImageView(image: "funnyPepe")

    private var opacityIsOn = 1.0
    private var opacityIsOff = 0.3

    @State var currentPepe = PepeController.angry
@State var name = 0
    var body: some View {
        VStack{
            VStack {
                angryPepeImage
                calmPepeImage
                funnyPepeImage
            }
            Spacer()
            Button {
                buttonPressed()
            } label: {
                Text("Go MEME")
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
            angryPepeImage.opacity(opacityIsOff)
            calmPepeImage.opacity(opacityIsOn)
            currentPepe = PepeController.calm
        case .calm:
            calmPepeImage.opacity(opacityIsOff)
            funnyPepeImage.opacity(opacityIsOn)
            currentPepe = PepeController.funny
        case .funny:
            funnyPepeImage.opacity(opacityIsOff)
            angryPepeImage.opacity(opacityIsOn)
            currentPepe = PepeController.angry
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

