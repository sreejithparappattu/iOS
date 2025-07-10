//
//  ContentView.swift
//  PushTest
//
//  Created by Sreejith PR on 10/07/25.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    let center = UNUserNotificationCenter.current()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            .padding()
          
            Button("Request Notification Permission") {
                center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
                    if let error = error {
                        print("Error requesting permission: \(error)")
                    } else if granted {
                        print("Permission granted")
                    } else {
                        print("Permission denied")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
