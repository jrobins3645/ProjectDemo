//
//  Example1.swift
//  ProjectDemo
//
//  Created by Jeff on 3/20/23.
//

import SwiftUI

struct CustomColor {
    static let color1 = Color("mycolor1")
}

struct Example1: View {
    var body: some View {
        ZStack {
            Color("mycolor1")
                .ignoresSafeArea()
            VStack {
                
                Image("cat")
                    .resizable()
                    .frame(width: 300.0, height: 300.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color("green"), lineWidth: 6))
                    .shadow(radius: 10)
       
                HStack {
                    Spacer()
                    Text("Mittens the Cat")
                        .font(.title)
                        .fontWeight(.bold)
                    .foregroundColor(Color.orange)
                   
                    
                }
                .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                
                Text("Mittens loves catnip, and chasing mice.  He's the goodest cat ever, he likes it when I pet him, and tell him he's a good boy.")
                
                
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
       
    }
}

struct Example1_Previews: PreviewProvider {
    static var previews: some View {
        Example1()
    }
}
