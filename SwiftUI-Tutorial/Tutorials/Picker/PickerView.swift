//
//  PickerView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 17/06/21.
//

import SwiftUI

struct PickerView: View {
    
    @State private var favoriteState = 1
    @State private var yourName = "Mark"
    private var names: [String] = ["Sean", "Chris", "Mark", "Scott", "Paul"]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Picker").font(.largeTitle)
            Text("With Modifiers").foregroundColor(.gray)
            Text("Your Favorite State:")
            
            Picker(selection: $favoriteState, label: Text("States")) {
                Text("California").tag(0)
                Text("Utah").tag(1)
                Text("Vermont").tag(2)
            }
            .foregroundColor(Color.white).padding(.horizontal)
            .background(Color("AccentColorDark"))
            .cornerRadius(15)
            .shadow(radius: 5)
            
            Text("Who do you want to watch today?")
            
            Picker(selection: $yourName, label: Text("Your Name")) {
                ForEach(names, id: \.self) { name in
                    Text(name)
                }
            }
            .padding(.horizontal)
            .background(RoundedRectangle(cornerRadius: 15)
            .stroke(Color.blue, lineWidth: 1))
        }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
            .preferredColorScheme(.dark)
    }
}
