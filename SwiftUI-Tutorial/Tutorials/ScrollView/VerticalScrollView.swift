//
//  VerticalScrollView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 17/06/21.
//

import SwiftUI

struct VerticalScrollView: View {
    
    @State private var names = ["Scott", "Mark", "Chris", "Sean", "Rod", "Meng", "Natasha", "Chase",
    "Evans", "Paul", "Durtschi", "Max"]
    
    var body: some View {
        NavigationView {
            GeometryReader { gr in
                ScrollView {
                    ForEach(names, id: \.self) { name in
                        NavigationLink(destination: BackButtonHiddenDetailView()) {
                            HStack {
                                Text(name).foregroundColor(.primary)
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.green)
                                Spacer()
                                Image(systemName: "chevron.right.circle.fill")
                            }
                            .font(.system(size: 24, design: .rounded))
                            .padding().background(Color.white)
                            .cornerRadius(8)
                            .shadow(radius: 1, y: 1)
                        }
                    }
                    .frame(width: gr.size.width - 32)
                    .accentColor(Color.pink) //items color
                    .padding()
                }
            }
            .navigationTitle("Cool People")
        }
    }
}

struct VerticalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalScrollView()
    }
}
