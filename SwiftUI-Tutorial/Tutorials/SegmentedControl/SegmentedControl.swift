//
//  SegmentedControl.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 17/06/21.
//

import SwiftUI

struct SegmentedControl: View {
    
    @State private var dayNight = "day"
    @State private var tab = 1
    @State private var selection = 0
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView(title: "Segmented Control (Picker)",
                       subtitle: "Introduction",
                       description: "Associate the segmented control with an @State variable that will control which segment is selected. The state variable will match each segment's tag value.",
                       backgroundColor: .pink,
                       textColor: .white)
            
            Picker("", selection: $dayNight) {
                Text("Day").tag("day")
                Text("Night").tag("Night")
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            Text("With Images:")
            Picker("", selection: $tab) {
                Image(systemName: "sun.min").tag(0)
                Image(systemName: "moon").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(Color.blue)
            .cornerRadius(8)
            .padding()
            
            Text("How many meals do you eat:")
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
                Text("More").tag(4)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        }
    }
}

struct SegmentedControl_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControl()
            .preferredColorScheme(.dark)
    }
}
