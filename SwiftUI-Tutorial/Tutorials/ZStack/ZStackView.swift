//
//  ZStackView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 12/06/21.
//

import SwiftUI

struct ZStackView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "ZStack",
                       subtitle: "Layering & Aligning",
                       description: "ZStacks are great for layering views. For example, putting text on top of an image.",
                       backgroundColor: .green,
                       textColor: .white)
            
            ZStack {
                Image("yosemite_large")
                    .resizable()
                    .scaledToFit()
                
                Rectangle()
                    .fill(Color.white.opacity(0.6))
                    .frame(maxWidth: .infinity, maxHeight: 50)
                
                Text("Yosemite nation park")
                    .font(.title)
            }
            
            DescView(desc: "But what if you wanted to have all the views align to the bottom?",
                     backgroundColor: .green,
                     textColor: .white)
        }
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
            .preferredColorScheme(.dark)
    }
}
