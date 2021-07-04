//
//  ToggleView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 19/06/21.
//

import SwiftUI

struct ToggleView: View {
    
    @State private var isToggleOn = true
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "Toggle",
                       subtitle: "Introduction",
                       description: "The Toggle fills the width of its parent view.",
                       backgroundColor: .blue,
                       textColor: .white)
            Toggle("Night Mode", isOn: $isToggleOn)
                .padding()
            DescView(desc: "Combine images with text",
                     backgroundColor: .blue,
                     textColor: .white)
            Toggle(isOn: $isToggleOn) {
                Text("Night Mode")
                Image(systemName: "moon")
            }
            .padding()
            DescView(desc: "Or you can have nothing",
                     backgroundColor: .blue,
                     textColor: .white)
            VStack {
                Text("Turn Alarm on?")
                    .foregroundColor(.white)
                Toggle("Turn this alarm on?", isOn: $isToggleOn)
                    .labelsHidden()
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
            .preferredColorScheme(.dark)
    }
}
