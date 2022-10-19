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
    @State private var angryOpacity = false
    @State private var calmOpacity = false
    @State private var funnyOpacity = false

    @State private var statusButton = false

    @State private var currentPepe = PepeController.funny

    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .indigo, .pink], startPoint: .top, endPoint: .bottom)
            VStack{
                Spacer()
                VStack {
                    ImageView(image: "angryPepe", opacity: angryOpacity)
                    ImageView(image: "calmPepe", opacity: calmOpacity)
                    ImageView(image: "funnyPepe", opacity: funnyOpacity)
                }
                Spacer()
                Button {
                    buttonPressed()
                } label: {
                    Text(statusButton ? "Go PEPE" : "Don't Touch Me")
                        .frame(width: 150, height: 35)
                        .tint(.white)
                        .background(statusButton ? .blue : .purple)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                Spacer()
            }
            .padding()
        }.ignoresSafeArea()
    }

    func buttonPressed() {
        statusButton = true

        switch currentPepe {
        case .angry:
            angryOpacity = false
            calmOpacity.toggle()
            currentPepe = PepeController.calm
        case .calm:
            calmOpacity.toggle()
            funnyOpacity.toggle()
            currentPepe = PepeController.funny
        case .funny:
            angryOpacity.toggle()
            funnyOpacity = false
            currentPepe = PepeController.angry
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

