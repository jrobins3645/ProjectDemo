//
//  Lab1.swift
//  ProjectDemo
//
//  Created by Jeff on 3/20/23.
//

import SwiftUI

struct Lab1: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        ZStack {
            Color.cyan
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("cat")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color("green2"), lineWidth: 8))
                
                HStack {
                    Text("Tony the Tiger")
                        .font(.title)
                        .foregroundColor(Color.white)
                    Spacer()
                }
                .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                
                Text("Tony thinks the most important meal of the day is breakfast.  His favorite breakfast is cereal.  His go-to cereal is Frosted Flakes.  They're more than good, they're great!")
                if order.includesPineapple {
                    Text("you like pineapple on pizza")
                }
                Text("You ordered \(order.quantity) pizzas")
            
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Lab1_Previews: PreviewProvider {
    static var previews: some View {
        Lab1()
    }
}

