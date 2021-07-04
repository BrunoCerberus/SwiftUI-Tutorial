//
//  DataListView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 16/06/21.
//

import SwiftUI

struct DataListView: View {
    
    var stringArray = [
        "This is the simplest List",
        "Evans",
        "Lemuel James Guerrero",
        "Mark",
        "Durtschi",
        "Chase",
        "Adam",
        "Rodrigo",
        "Notice the automatic wrapping when the content is larger"
    ]
    
    var body: some View {
        List(stringArray, id: \.self) { string in
            Text(string)
        }
    }
}

struct DataListView_Previews: PreviewProvider {
    static var previews: some View {
        DataListView()
            .preferredColorScheme(.dark)
    }
}
