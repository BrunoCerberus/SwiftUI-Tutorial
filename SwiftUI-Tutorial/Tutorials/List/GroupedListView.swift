//
//  GroupedListView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 16/06/21.
//

import SwiftUI

struct GroupedListView: View {
    
    var stringArray = [
        "Grouped List Style",
        "This List is using group List Style",
        "Evans",
        "Lemuel James Guerrero",
        "Mark",
        "Durtschi",
        "Chase",
        "Adam",
        "Rodrigo"
    ]
    
    var body: some View {
        List(stringArray, id: \.self) { string in
            HStack {
                Text(string)
                    .font(string == "Grouped List Style" ? .largeTitle : .body)
                
                Spacer()
                
                Image(systemName: string == "Mark" ? "circle.fill" : "circle")
                    .foregroundColor(.green)
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct GroupedListView_Previews: PreviewProvider {
    static var previews: some View {
        GroupedListView()
            .preferredColorScheme(.dark)
    }
}
