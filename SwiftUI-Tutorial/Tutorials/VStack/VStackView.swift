//
//  VStackView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 22/05/21.
//

import SwiftUI

struct VStackView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("VStack")
                .font(.largeTitle)
            
            Text("Alignment and Spacing")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("By default, views in a VStack are center aligned.")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Leading Alignment").font(.title3)
                Divider()
                Image(systemName: "arrow.left")
            }
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundColor(.blue)
            .padding()
            
            VStack(alignment: .trailing, spacing: 20) {
                Text("Trailing Alignment").font(.title2)
                Divider()
                Image(systemName: "arrow.right")
            }
            .padding()
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 10))
            .foregroundColor(.blue)
            .padding()
        }
    }
}

struct VStackView_Previews: PreviewProvider {
    static var previews: some View {
        VStackView()
            .preferredColorScheme(.dark)
    }
}
