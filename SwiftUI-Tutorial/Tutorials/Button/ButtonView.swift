//
//  ButtonView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 12/06/21.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            HeaderView(title: "Button",
                       subtitle: "Introduction",
                       description: "If you want to show the default text style in a button then you can pass in a string as the first parameter",
                       backgroundColor: .purple,
                       textColor: .white)
            
            Button("Default Style") {
                //code goes here
            }
            
            DescView(desc: "You can customize the text shown for a button",
                     backgroundColor: .purple,
                     textColor: .white)
            
            Button(action: {
                // code goes here
            }, label: {
                Text("Headline font")
                    .font(.headline)
            })
            Divider()
            Button(action: {
                // code goes here
            }, label: {
                Text("Foreground color")
                    .foregroundColor(.red)
            })
            Divider()
            Button(action: {
                // code goes here
            }, label: {
                Text("Thin Font Weight")
                    .fontWeight(.thin)
            })
            VStack {
                Divider()
                Button(action: {
                    // code goes here
                }, label: {
                    Text("Forgot password?")
                    Text("Tap here")
                        .foregroundColor(.yellow)
                })
                Divider()
                Button(action: {
                    // code goes here
                }, label: {
                    VStack(spacing: 8) {
                        Text("Forgot password?")
                        Text("Tap here")
                            .foregroundColor(.yellow)
                    }
                })
                Divider()
                Button(action: {
                    // code goes here
                }, label: {
                    Text("Button with shadow")
                        .padding(12)
                        .foregroundColor(.white)
                        .background(Color.purple)
                        .cornerRadius(8)
                })
                .shadow(color: .purple, radius: 10, x: 0.0, y: 0.0)
                Divider()
                Button(action: {
                    // code goes here
                }, label: {
                    VStack {
                        Image(systemName: "video.fill")
                        Text("Record")
                            .padding(.horizontal)
                    }
                })
                .padding()
                .foregroundColor(.red)
                .background(Color.blue)
                .cornerRadius(30)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .preferredColorScheme(.dark)
    }
}
