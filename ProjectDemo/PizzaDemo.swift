//
//  PizzaDemo.swift
//  ProjectDemo
//
//  Created by Jeff on 3/20/23.
//

import SwiftUI


class Order: ObservableObject {
    @Published var includesPineapple: Bool = true
    @Published var quantity: Int = 0
}

struct PizzaDemo: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        ZStack {
            Color("color1")
                .ignoresSafeArea()
            VStack {
                Text("Pizza 🍕")
                    .font(.title)
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Include Tomato")
                }
                Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                    Text("Include Mozzerella")
                }
                Toggle(isOn: $order.includesPineapple) {
                    Text("Include Pineapple")
                }
                Stepper(value: $order.quantity, in: 0...10) {
                    Text("Quantity: \(order.quantity)")
                }
                NavigationLink {
                    Lab1()
                } label: {
                    Text("Order")
                }
               
            }
            .padding(/*@START_MENU_TOKEN@*/.horizontal/*@END_MENU_TOKEN@*/)
        }
    }
}

struct PizzaDemo_Previews: PreviewProvider {
    static var previews: some View {
        PizzaDemo()
    }
}
