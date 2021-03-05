//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Christopher Bartling on 2/13/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
