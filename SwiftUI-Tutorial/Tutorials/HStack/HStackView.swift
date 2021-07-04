//
//  HStackView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 22/05/21.
//

import SwiftUI

struct HStackView: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "HStack",
                       subtitle: "Customizing",
                       description: "HStacks are views that can have modifiers applied to them just like any other view.",
                       backgroundColor: .orange,
                       textColor: .white)
            
            HStack {
                Text("Leading")
                Text("Middle")
                Text("Trailing")
            }.padding().border(Color.orange)
            
            HStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            
            HStack(spacing: 20) {
                Image(systemName: "n.circle.fill")
                Image(systemName: "o.circle.fill")
                Image(systemName: "a.circle.fill")
                Image(systemName: "h.circle.fill")
            }.padding().background(Color.blue).cornerRadius(10).font(.title)
        }
    }
}

struct HStackView_Previews: PreviewProvider {
    static var previews: some View {
        HStackView()
            .preferredColorScheme(.dark)
    }
}
