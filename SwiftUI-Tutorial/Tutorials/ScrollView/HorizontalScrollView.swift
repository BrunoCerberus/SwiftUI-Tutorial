//
//  HorizontalScrollView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 17/06/21.
//

import SwiftUI

struct HorizontalScrollView: View {
    
    var items: [Color] = [Color.green, Color.blue, Color.purple, Color.pink, Color.yellow, Color.orange]
    
    var body: some View {
        GeometryReader { gr in
            VStack(spacing: 20) {
                HeaderView(title: "ScrollView",
                           subtitle: "Scroll Horizontally",
                           description: "Just set the ScrollView's axis to horizontal and if the contents go horizontally beyond the frame, scrolling will be enabled",
                           backgroundColor: .green,
                           textColor: .white)
                
                ScrollView(Axis.Set.horizontal, showsIndicators: true) {
                    HStack {
                        ForEach(items, id: \.self) { item in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(item)
                                .frame(width: gr.size.width - 60, height: 200)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct HorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}
