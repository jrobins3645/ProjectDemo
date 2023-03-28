//
//  ProjectDemoApp.swift
//  ProjectDemo
//
//  Created by Jeff on 3/20/23.
//

import SwiftUI

@main
struct ProjectDemoApp: App {
    @StateObject var order = Order()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(order)
        }
    }
}
