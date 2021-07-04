//
//  StaticListView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 16/06/21.
//

import SwiftUI

struct StaticListView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "List",
                       subtitle: "Static Data",
                       description: "You can show static views or data within the List view. It does not have to be bound with data. It gives you a scrollable view.",
                       backgroundColor: .green,
                       textColor: .black)
            
            List {
                Text("Line one")
                Text("Line two")
                    .listRowBackground(Color.blue)
                Text("Line Three")
                    .listRowInsets(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                
                Button("Click here", action: {})
                HStack {
                    Spacer()
                    Text("Centered text")
                    Spacer()
                }.padding()
            }
        }
    }
}

struct StaticListView_Previews: PreviewProvider {
    static var previews: some View {
        StaticListView()
            .preferredColorScheme(.dark)
    }
}
