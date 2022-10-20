//
//  ContentView.swift
//  TrafficLight_SwiftUI
//
//  Created by Maxim on 18.10.2022.
//

import SwiftUI

enum PepeController {
    case angry, calm, funny, off
}

struct ContentView: View {

    @State private var status = false

    @State private var currentPepe = PepeController.off

    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .indigo, .pink], startPoint: .top, endPoint: .bottom)
            VStack{
                Spacer()
                VStack {
                    ImageView(image: "angryPepe", opacity: currentPepe == .angry)
                    ImageView(image: "calmPepe", opacity: currentPepe == .calm)
                    ImageView(image: "funnyPepe", opacity: currentPepe == .funny)
                }
                Spacer()
                Button {
                    buttonPressed()
                } label: {
                    Text(status ? "Go PEPE" : "Don't Touch Me")
                        .frame(width: 150, height: 35)
                        .tint(.white)
                        .background(status ? .blue : .purple)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                Spacer()
            }
            .padding()
        }.ignoresSafeArea()
    }

    func buttonPressed() {
        status = true

        switch currentPepe {
        case .angry:
            currentPepe = PepeController.calm
        case .calm:
            currentPepe = PepeController.funny
        case .funny:
            currentPepe = PepeController.angry
        case .off:
            currentPepe = PepeController.angry
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

