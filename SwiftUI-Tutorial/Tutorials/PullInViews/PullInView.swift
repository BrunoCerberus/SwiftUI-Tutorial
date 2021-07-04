//
//  PullInView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 22/05/21.
//

import SwiftUI

struct PullInView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior")
                .font(.largeTitle)
            Text("Views that Pull in").foregroundColor(.gray)
            Text("Some views minimize their frame size so it is only as big as the content within it.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .layoutPriority(1)
            
            Image(systemName: "arrow.down.to.line.alt")
            HStack {
                Image(systemName: "arrow.right.to.line.alt")
                Text("Text views pull in")
                Image(systemName: "arrow.left.to.line.alt")
            }
            Image(systemName: "arrow.up.to.line.alt")
            
            Text("Pull-In views tend to center themselves within their parent container view")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .layoutPriority(1)
        }.font(.title2)
    }
}

struct PullInView_Previews: PreviewProvider {
    static var previews: some View {
        PullInView()
            .preferredColorScheme(.dark)
    }
}
