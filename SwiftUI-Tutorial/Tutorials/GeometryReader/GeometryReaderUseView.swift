//
//  GeometryReaderUseView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 12/06/21.
//

import SwiftUI

struct GeometryReaderUseView: View {
    var body: some View {
        GeometryReader { parentGeo in
            VStack(spacing: 20) {
                HeaderView(title: "GeometryReader",
                           subtitle: "Introduction",
                           description: "GeometryReader is a container view that pushes out to fill up all available space. You use it to help withpositioning items within it.",
                           backgroundColor: .blue,
                           textColor: .white)
                
                GeometryReader { geo in
                    Text("Upper Left")
                        .position(x: geo.size.width/5, y: geo.size.height/2)
                    Text("Lower Right")
                        .position(x: geo.size.width - 90, y: geo.size.height - 40)
                    VStack(spacing: 10) {
                        Text("Inner Geometry Width: \(geo.size.width)")
                        Text("Inner Geometry Height: \(geo.size.height)")
                        Spacer()
                            .frame(maxHeight: 10)
                        Text("Parent Geometry Width: \(parentGeo.size.width)")
                        Text("Parent Geometry Height: \(parentGeo.size.height)")
                    }
                    
                }
                .foregroundColor(.white)
                .background(Color.pink)
            }
        }
    }
}

struct GeometryReaderUseView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderUseView()
            .preferredColorScheme(.dark)
    }
}
