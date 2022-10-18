//
//  ImageView.swift
//  TrafficLight_SwiftUI
//
//  Created by Maxim on 18.10.2022.
//

import SwiftUI

struct ImageView: View {
     let image: String

    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: 100, height: 100)
            .opacity(0.3)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: "funnyPepe")
    }
}
