//
//  HeaderFooterListView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 17/06/21.
//

import SwiftUI

struct HeaderFooterListView: View {
    
    var data = ["Evans", "Lemuel James Guerrero", "Mark", "Durtschi", "Chase", "Rodrigo"]
    
    var body: some View {
        List {
            Section(header: Header(), footer: Text("7 people on Staff")) {
                ForEach(data, id: \.self) { datum in
                    Text(datum).font(Font.system(size: 18).bold())
                }
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct Header: View {
    var body: some View {
        Image("yosemite_large")
            .resizable()
            .scaledToFit()
            .overlay(Text("STAFF"))
            .font(Font.system(size: 120, design: Font.Design.serif))
            .foregroundColor(.green)
    }
}

struct HeaderFooterListView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderFooterListView()
            .preferredColorScheme(.dark)
    }
}
