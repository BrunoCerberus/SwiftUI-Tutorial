//
//  ListRowBackgroundView.swift
//  SwiftUI-Tutorial
//
//  Created by bruno on 16/06/21.
//

import SwiftUI

struct Todo: Identifiable {
    let id: UUID = UUID()
    var action = ""
    var due = ""
    var isIndented = false
}

struct ListRowBackgroundView: View {
    
    @State private var newToDo = ""
    
    @State var data = [
        Todo(action: "Practice Coding", due: "Today"),
        Todo(action: "Grocery shopping", due: "Today"),
        Todo(action: "Get tickets", due: "Tomorrow"),
        Todo(action: "Clean house", due: "Next Week"),
        Todo(action: "Do laundry", due: "Next Week"),
        Todo(action: "Cook dinner", due: "Next Week"),
        Todo(action: "Paint room", due: "Next Week")
    ]
    
    var body: some View {
        List {
            Section(header:
            
                        VStack {
                            Text("To Do").font(.title)
                            HStack {
                                TextField("New Todo", text: $newToDo)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                Button(action: {
                                    self.data.append(Todo(action: self.newToDo))
                                    self.newToDo = ""
                                }) {
                                    Image(systemName: "plus.circle.fill").font(.title)
                                }
                            }
                        }
                        .padding(
                            EdgeInsets(top: 50, leading: 16, bottom: 16, trailing: 16)
                        )
            ) {
                ForEach(data, id: \.id) { datum in
                    Text(datum.action)
                        .font(Font.system(size: 24))
                        .foregroundColor(self.getTextColor(due: datum.due))
                        .listRowBackground(datum.due == "Today" ? Color.green : Color.clear)
                        .padding()
                }
            }
        }.edgesIgnoringSafeArea(.vertical)
    }
    
    private func getTextColor(due: String) -> Color {
        due == "Today" ? .black : .primary
    }
}

struct ListRowBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowBackgroundView()
            .preferredColorScheme(.dark)
    }
}
