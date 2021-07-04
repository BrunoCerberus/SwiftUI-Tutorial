//
//  TutorialNavigationView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 17/06/21.
//

import SwiftUI

struct TutorialNavigationView: View {
    
    @State private var navIsHidden = false
    @State private var largeNavTitle = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Theme3BackgroundColor")
                VStack(spacing: 25) {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    
                    Text("Navigation View")
                        .font(.largeTitle)
                    
                    Text("Having a NavigationView will show nothing unless you also include a navigationBarTitle modifier.")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .layoutPriority(1)
                    
                    Toggle("Hide Nav Bar", isOn: $navIsHidden)
                        .padding(.horizontal)
                    
                    Toggle("Large title", isOn: $largeNavTitle)
                        .padding(.horizontal)
                    
                    NavigationLink("Go to the next screen", destination: BackButtonHiddenDetailView())
                    
                    Spacer()
                }
                .font(.title)
                .padding(.top, 25)
            }
            .navigationBarTitle(Text("Navigation Views"),
                                displayMode: largeNavTitle == false ? .inline : .large)
            .navigationBarHidden(navIsHidden)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(
                leading: Button(action: {}) {
                    Image(systemName: "bell.fill")
                        .foregroundColor(.blue)
                },
                trailing: Button("Actions", action: {})
                    .foregroundColor(.blue)
            )
        }
    }
}

struct TutorialNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialNavigationView()
            .preferredColorScheme(.dark)
    }
}
