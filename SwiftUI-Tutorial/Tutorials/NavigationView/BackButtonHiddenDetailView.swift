//
//  BackButtonHiddenDetailView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 17/06/21.
//

import SwiftUI

struct BackButtonHiddenDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color("Theme3BackgroundColor")
            VStack(spacing: 25) {
                Image(systemName: "globe").font(.largeTitle)
                Text("NavigationView").font(.largeTitle)
                Text("Back Button Hidden").foregroundColor(.gray)
                Image("NavBarBackButtonHidden")
                Text("This nav bar has no back button because it was hidden on this view.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("Theme3ForegroundColor"))
                    .foregroundColor(Color("Theme3BackgroundColor"))
                    .layoutPriority(1)
                
                Button("Go Back") {
                    self.presentationMode.wrappedValue.dismiss()
                }
                Spacer()
            }
            .font(.title)
            .padding(.top, 50)
        }
        .navigationBarTitle(Text("Detail View"), displayMode: .inline)
        .edgesIgnoringSafeArea(.bottom)
        // Hide the back button
        .navigationBarBackButtonHidden(true)
    }
}

struct BackButtonHiddenDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonHiddenDetailView()
            .preferredColorScheme(.dark)
    }
}
