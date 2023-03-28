//
//  Example2.swift
//  ProjectDemo
//
//  Created by Jeff on 3/21/23.
//

import SwiftUI

struct Example2: View {
    @State private var fullText: String = ""
    
    @State private var selection = "Red"
       let colors = ["Los Angeles", "Detroit", "Chicago", "Black", "Tartan"]
    
    var body: some View {
        ZStack {
            Color("teal")
                .ignoresSafeArea()
            
            VStack {
                Picker("Select a paint color", selection: $selection) {
                                ForEach(colors, id: \.self) {
                                    Text($0)
                                }
                            }
                            .pickerStyle(.menu)
                Image("cat")
                Text("Leave your review below")
                TextEditor(text: $fullText)
                    .frame(width: 300.0, height: 250.0)
            }
        }
    }
}

struct Example2_Previews: PreviewProvider {
    static var previews: some View {
        Example2()
    }
}
