//
//  CustomSliderView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 18/06/21.
//

import SwiftUI

struct CustomSliderView: View {
    
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Slider").font(.largeTitle)
            Text("Introduction").font(.title).foregroundColor(.gray)
            Divider()
            Slider(value: $sliderValue)
                .padding(.horizontal, 10)
                .background(Color.orange)
                .cornerRadius(20)
                .shadow(color: .gray, radius: 2)
                .padding(.horizontal)
            
            Slider(value: $sliderValue)
                .padding(.horizontal)
                .accentColor(.pink)
            
            Slider(value: $sliderValue)
                .padding(10)
                .background(Capsule().stroke(Color.orange, lineWidth: 2))
                .padding(.horizontal)
            
            Slider(value: $sliderValue)
                .padding(10)
                .background(Capsule().fill(Color.orange))
                .padding(.horizontal)
            HStack {
                Image(systemName: "speaker.fill")
                Slider(value: $sliderValue)
                Image(systemName: "speaker.3.fill")
            }
            .font(.title)
            .foregroundColor(.blue)
            .padding()
        }
    }
}

struct CustomSliderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSliderView()
            .preferredColorScheme(.dark)
    }
}
