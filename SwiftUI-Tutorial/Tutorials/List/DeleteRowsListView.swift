//
//  DeleteRowsListView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 16/06/21.
//

import SwiftUI

struct DeleteRowsListView: View {
    
    @State var data = ["Swipe to Delete",
                       "Practice Coding",
                       "Grocery shopping",
                       "Get tickets",
                       "Clean house",
                       "Do laundry",
                       "Cook dinner",
                       "Paint room"
    ]
    
    var body: some View {
        List {
            Section(header: Text("To Do").padding()) {
                ForEach(data, id: \.self) { datum in
                    Text(datum).font(Font.system(size: 24)).padding()
                }.onDelete(perform: delete)
            }
        }
    }
    
    private func delete(at indexes: IndexSet) {
        if let first = indexes.first {
            data.remove(at: first)
        }
    }
}

struct DeleteRowsListView_Previews: PreviewProvider {
    static var previews: some View {
        DeleteRowsListView()
            .preferredColorScheme(.dark)
    }
}
