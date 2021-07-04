//
//  SliderView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 18/06/21.
//

import SwiftUI

struct SliderView: View {
    
    @State private var sliderValue = 0.5
    @State private var age = 18.0
    
    let ageFormatter: NumberFormatter = {
        let numFormatter = NumberFormatter()
        numFormatter.numberStyle = .spellOut
        return numFormatter
    }()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "Slider",
                       subtitle: "Introduction",
                       description: "Associate the Slider with an @State variable",
                       backgroundColor: .pink,
                       textColor: .white)
                .layoutPriority(1)
            
            Text("Default min value is 0.0 and max value is 1.0").font(Font.system(size: 21))
                .padding(.horizontal)
            
            Slider(value: $sliderValue)
                .padding()
            Text("Value is: ") + Text("\(sliderValue)").foregroundColor(.orange)
            Text("Range of Values").font(.title3).foregroundColor(.gray)
            Text("What is your age?")
            Slider(value: $age, in: 1...100, step: 1)
                .padding(.horizontal)
            Text("Age is: ") +
             Text("\(ageFormatter.string(from: NSNumber(value: age))!)")
             .foregroundColor(.orange)
            Spacer()
        }.font(.title)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
