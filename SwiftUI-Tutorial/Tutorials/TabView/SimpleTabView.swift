//
//  SimpleTabView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 18/06/21.
//

import SwiftUI

struct SimpleTabView: View {
    
    @State private var selectedTab = 2
    
    var body: some View {
        TabView(selection: $selectedTab) {
            //First screen
            CustomSliderView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Tab 1")
                    }
                }.tag(1)
            //Second screen
            StepperView()
                .tabItem {
                    VStack {
                        Image(systemName: "moon.fill")
                        Text("Tab 2")
                    }
                }.tag(2)
            FormsView()
                .tabItem {
                    VStack {
                        Image(systemName: "sun.min.fill")
                        Text("Tab 3")
                    }
                }.tag(3)
            VStack {
                HeaderView(title: "TabView",
                           subtitle: "Navigation",
                           description: "Add a unique tag value to each screen (view) you want to programmatically navigate to. You can then bind a variable to the TabView's selection property and change that variable to navigate.",
                           backgroundColor: .yellow,
                           textColor: .black)
                Button("Go to tab 3") {
                    self.selectedTab = 3
                }.font(.title)
            }.tabItem {
                VStack {
                    Image(systemName: "phone.fill")
                    Text("Tab 4")
                }
            }.tag(4)
        }
    }
}

struct SimpleTabView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleTabView()
    }
}
