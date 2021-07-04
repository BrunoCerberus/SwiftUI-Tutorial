//
//  DescView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 12/06/21.
//

import SwiftUI

struct DescView: View {
    
    var desc: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Text(desc)
            .frame(maxWidth: .infinity)
            .padding()
            .background(backgroundColor)
            .foregroundColor(textColor)
            .layoutPriority(1)
    }
}
