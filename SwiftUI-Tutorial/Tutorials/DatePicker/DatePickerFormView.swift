//
//  DatePickerFormView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 13/06/21.
//

import SwiftUI

struct DatePickerFormView: View {
    
    @State private var currentDate: Date = Date()
    
    var body: some View {
        Form {
            Section(header: Text("DatePicker").font(.largeTitle).padding()) {
                Text("Used in Forms")
                    .font(.title).foregroundColor(.gray)
                    .padding()
                
                Text("The DatePicker looks diferent when used in forms. The first parameter called `title` is used when in forms and lists.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.black)
                    .listRowBackground(Color.yellow)
                    .font(.title)
                
                DatePicker("DatePicker Collapsed (Default)",
                           selection: $currentDate,
                           displayedComponents: .date)
                
                DatePicker("DatePicker Collapsed (Selected)",
                           selection: $currentDate,
                           displayedComponents: .date)
            }
        }
    }
}

struct DatePickerFormView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerFormView()
            .preferredColorScheme(.dark)
    }
}
