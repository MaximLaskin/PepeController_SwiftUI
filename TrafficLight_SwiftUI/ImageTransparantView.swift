//
//  ImageTransparantView.swift
//  TrafficLight_SwiftUI
//
//  Created by Maxim on 19.10.2022.
//

import SwiftUI

struct ImageTransparantView: View {
    let image: String

   var body: some View {
       Image(image)
           .resizable()
           .scaledToFill()
           .frame(width: 100, height: 100)
            .opacity(0.3)
   }
}

struct ImageTransparantView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTransparantView(image: "angrePepe")
    }
}
