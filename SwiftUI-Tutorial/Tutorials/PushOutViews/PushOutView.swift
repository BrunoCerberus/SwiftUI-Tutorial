//
//  PushOutView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 22/05/21.
//

import SwiftUI

struct PushOutView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior")
                .font(.largeTitle)
            Text("Views that Push Out").foregroundColor(.gray)
            Text("Some views will push out to fill up all available space within their parent")
                .frame(maxWidth: .infinity).padding().font(.title)
                .background(Color.purple)
                .foregroundColor(.white)
                .layoutPriority(1)
            
            Color.purple
                .overlay(
                    Image(systemName: "arrow.up.left")
                        .padding()
                    , alignment: .topLeading)
                .overlay(
                    Image(systemName: "arrow.up.right")
                        .padding()
                    , alignment: .topTrailing)
                .overlay(
                    Image(systemName: "arrow.down.left")
                        .padding()
                    , alignment: .bottomLeading)
                .overlay(
                    Image(systemName: "arrow.down.right")
                        .padding()
                    , alignment: .bottomTrailing)
                .overlay(
                    Text("Colors are Push-Out views")
                )
                .font(.title3)
        }.font(.largeTitle)
    }
}

struct PushOutView_Previews: PreviewProvider {
    static var previews: some View {
        PushOutView()
            .preferredColorScheme(.dark)
    }
}
