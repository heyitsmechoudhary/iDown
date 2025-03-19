//
//  iDownApp.swift
//  iDown
//
//  Created by Rahul choudhary on 12/03/25.
//

import SwiftUI

@main
struct iDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
