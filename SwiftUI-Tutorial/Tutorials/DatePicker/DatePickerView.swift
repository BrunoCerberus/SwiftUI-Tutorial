//
//  DatePickerView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 13/06/21.
//

import SwiftUI

struct DatePickerView: View {
    
    @State private var nextFullMoonDate = Date()
    @State private var hourAndMinute = Date()
    @State private var dateAndHour = Date()
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView(title: "DatePicker",
                       subtitle: "Introduction",
                       description: "Bind a date variable to get and set the date in the date picker",
                       backgroundColor: .yellow,
                       textColor: .black)
            
            HStack {
                Spacer()
                Image(systemName: "moon.circle")
                Spacer()
                Circle().frame(width: 60, height: 60)
                Spacer()
                Image(systemName: "moon.circle.fill")
                Spacer()
            }
            .foregroundColor(.yellow)
            
            DatePicker("Date of next full moon", selection: $nextFullMoonDate,
                       displayedComponents: .date)
                .padding(.horizontal)
            DatePicker("Hour and minute", selection: $nextFullMoonDate,
                       displayedComponents: .hourAndMinute)
                .padding(.horizontal)
            
            DatePicker("Date and hour", selection: $dateAndHour,
                       displayedComponents: [.date, .hourAndMinute])
                .padding(.horizontal)
            
            Text("Notice the indent of the picker.")
                .padding().frame(maxWidth: .infinity)
                .foregroundColor(.black)
                .background(Color.yellow)
        }
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
            .preferredColorScheme(.dark)
    }
}
