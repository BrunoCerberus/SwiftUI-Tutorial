//
//  SpacerView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 12/06/21.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Spacer")
                .font(.largeTitle)
            
            Text("Relative Spacing")
                .foregroundColor(.gray)
            
            Text("You can add more spacers to create relative spacing in comparison to other spacers.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.yellow).foregroundColor(.black)
            
            HStack(spacing: 50) {
                VStack(spacing: 5) {
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Text("33% Down")
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                }
                
                VStack(spacing: 5) {
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                    Text("75% Down")
                    Spacer()
                        .frame(width: 5)
                        .background(Color.blue)
                }
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
            .preferredColorScheme(.dark)
    }
}
