//
//  MoveListView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 16/06/21.
//

import SwiftUI

struct MoveListView: View {
    
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
        NavigationView {
            List {
                ForEach(data, id: \.self) { datum in
                    Text(datum).font(Font.system(size: 24)).padding()
                }.onMove(perform: moveRow)
            }
            .navigationBarTitle(Text("To Do"))
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    private func moveRow(from indexes: IndexSet, to destination: Int) {
        if let first = indexes.first {
            data.insert(data.remove(at: first), at: destination)
        }
    }
}

struct MoveListView_Previews: PreviewProvider {
    static var previews: some View {
        MoveListView()
            .preferredColorScheme(.dark)
    }
}
