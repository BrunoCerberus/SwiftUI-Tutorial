//
//  SecureFieldView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 17/06/21.
//

import SwiftUI

struct SecureFieldView: View {
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "globe")
                .resizable()
                .frame(width: 80, height: 80, alignment: .top)
                .padding(.top, 24)
            Text("SecureField")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("SecureFields, like TextFields, need to bind to a local variable.").bold()
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
            
            TextField("User name", text: $userName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            // custom SecureField
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.purple)
                .overlay(
                    SecureField("Password", text: $password)
                        .padding(.horizontal)
                )
                .frame(height: 40)
                .padding(.horizontal)
            
            Spacer()
            
        }
    }
}

struct SecureFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldView()
            .preferredColorScheme(.dark)
    }
}
