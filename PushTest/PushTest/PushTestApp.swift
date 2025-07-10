//
//  PushTestApp.swift
//  PushTest
//
//  Created by Sreejith PR on 10/07/25.
//

import SwiftUI

@main
struct PushTestApp: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate

    var body: some Scene {
        WindowGroup {
            ContentView().onAppear(perform: {
                appDelegate.app = self
            })
        }
    }
}
