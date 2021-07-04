//
//  BasicSampleTemplateView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 22/05/21.
//

import SwiftUI

struct BasicSampleTemplateView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            
            Text("Subtitle")
                .font(.title)
                .foregroundColor(Color.gray)
            
            Text("Short description of what I am desmonstrating goes here.")
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
            
            Text("(Short description of what I am desmonstrating goes here.)")
        }
    }
}

struct BasicSampleTemplateView_Previews: PreviewProvider {
    static var previews: some View {
        BasicSampleTemplateView()
            .preferredColorScheme(.dark)
    }
}
