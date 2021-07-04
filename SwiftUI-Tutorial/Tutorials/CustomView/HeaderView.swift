//
//  HeaderView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 22/05/21.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    var subtitle: String
    var description: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
        Text(subtitle).foregroundColor(.gray)
        Text(description)
            .frame(maxWidth: .infinity)
            .padding()
            .background(backgroundColor)
            .foregroundColor(textColor)
            .layoutPriority(1)
    }
}
