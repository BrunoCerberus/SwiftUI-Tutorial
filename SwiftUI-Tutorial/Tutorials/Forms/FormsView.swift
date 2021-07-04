//
//  FormsView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 13/06/21.
//

import SwiftUI

struct FormsView: View {
    
    @State private var isOn: Bool = true
    @State private var textFieldData: String = "This is a textfield"
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("This is a Form!").font(.title)) {
                    Text("You can put any content in here")
                    Text("The cells will grow to fit the content")
                    Text("Remember, it's just views inside of views")
                }
                
                Section {
                    Text("Limitations").font(.title)
                    Text("There are built-in margins that are dificult to get around. Take a look at the color below so you can see where the margins are:")
                        .listRowBackground(Color.blue)
                    Color.purple
                }
                
                Section {
                    Text("Summary")
                        .font(.title)
                    Text("Pretty much what you see here is what you get.")
                }
                
                Section(header: SectionTextAndImage(name: "People", image: "person.2.square.stack.fill")) {
                    Text("Here is an example of a section header with imag and text")
                }
                
                Section(header: Text(""), footer: Text("Total: $5,600.00").bold()) {
                    Text("Here is an example of a section header with footer")
                }
                
                Section(header: Text("Row Inset Uses").font(.title).foregroundColor(.gray)) {
                    Text("Other possible uses could be for indenting")
                    Text("Indent Level 1")
                        .listRowInsets(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                    Text("Indent Level 2")
                        .listRowInsets(EdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 0))
                    Text("Or Vertical alignment")
                    Text("Top")
                        .listRowInsets(EdgeInsets(top: -20, leading: 40, bottom: 0, trailing: 0))
                    Text("Bottom")
                        .listRowInsets(EdgeInsets(top: 20, leading: 40, bottom: 0, trailing: 0))
                }
                
                Section(header: Text("Controls in a Form").font(.title).foregroundColor(.gray).bold()) {
                    Button(action: {}) { Text("Button") }
                    Toggle(isOn: $isOn) { Text("Toggle") }
                    Stepper(onIncrement: {}, onDecrement: {}) { Text("Stepper") }
                    TextField("", text: $textFieldData)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Image(systemName: "leaf.arrow.circlepath").font(.title)
                    Circle()
                    Text("Notice shapes are centered 👆🏻")
                    TextField("", text: $textFieldData)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
            }
            
            Divider()
            Button(action: {}) {
                Text("This button should not scroll")
                    .padding(12)
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            .shadow(color: .purple, radius: 10, x: 0.0, y: 0.0)
        }
    }
}

struct FormsView_Previews: PreviewProvider {
    static var previews: some View {
        FormsView()
            .preferredColorScheme(.dark)
    }
}
