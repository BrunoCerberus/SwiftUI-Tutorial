//
//  SectionTextAndImageView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 13/06/21.
//

import SwiftUI

struct SectionTextAndImage: View {
    var name: String
    var image: String
    var body: some View {
        HStack {
            Image(systemName: image).padding(.trailing)
            Text(name)
        }
        .padding()
        .font(.title)
        .foregroundColor(Color.purple)
    }
}
