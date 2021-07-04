//
//  StepperView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 18/06/21.
//

import SwiftUI

struct StepperView: View {
    
    @State private var stepperValue = 1
    @State private var values = [0, 1]
    @State private var stars = 5
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Stepper").font(.largeTitle).bold()
            Text("Introduction").font(.title2).foregroundColor(.gray)
            Divider()
            Stepper(value: $stepperValue) {
                Text("Bound Stepper: \(stepperValue)")
            }.padding(.horizontal)
            Divider()
            Stepper("onIncrement and onDecrement",
                    onIncrement: { self.values.append(self.values.count)},
                    onDecrement: { self.values.removeLast() }).padding(.horizontal)
            ScrollView(Axis.Set.horizontal, showsIndicators: true) {
                HStack {
                    ForEach(values, id: \.self) { value in
                        Image(systemName: "\(value).circle.fill")
                            .font(.title).foregroundColor(.green)
                    }
                }
            }.padding(.horizontal)
            Divider()
            VStack {
                Text("Ranged Stepper").font(.title2).foregroundColor(.gray)
                Stepper("Rating",
                        value: $stars,
                        in: 1...5).padding(.horizontal)
                HStack {
                    ForEach(1...stars, id: \.self) { star in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.title2)
                            .padding(.top)
                    }
                }
                Divider()
                Stepper(onIncrement: {}, onDecrement: {}) {
                    Text("Custom Stepper")
                        .font(.title)
                        .padding(.vertical)
                }
                .padding(.horizontal)
                .background(Color.blue)
                .foregroundColor(.white)
                Divider()
                HStack {
                    Text("My cystom colored Stepper")
                    Spacer()
                    Stepper("", value: $stepperValue)
                        .background(Color.orange)
                        .cornerRadius(9)
                        .labelsHidden() // Hide the label
                }
            }
        }
    }
}

struct StepperView_Previews: PreviewProvider {
    static var previews: some View {
        StepperView()
            .preferredColorScheme(.dark)
    }
}
