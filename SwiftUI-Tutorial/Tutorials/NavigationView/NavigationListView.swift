//
//  NavigationListView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 17/06/21.
//

import SwiftUI

struct NavigationListView: View {
    @State var data = ["Milk", "Bread", "Tomatoes", "Lettuce", "Onions", "Rice", "Limes", "Butter"]
    
    var body: some View {
        NavigationView {
            List(data, id: \.self) { datum in
                NavigationLink(destination: BackButtonHiddenDetailView()) {
                    Text(datum).font(Font.system(size: 24)).padding(.vertical)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Shopping")
            .navigationBarItems(trailing:
                                    Button("Add") {
                                        data.append("Torresmo")
                                    }
            )
        }
    }
}

struct NavigationListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationListView()
            .preferredColorScheme(.dark)
    }
}
