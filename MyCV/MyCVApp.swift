//
//  MyCVApp.swift
//  MyCV
//
//  Created by Vasiliy on 05.10.2022.
//

import SwiftUI

@main
struct MyCVApp: App {

    @State private var showLaunchView = true

    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()

                ZStack {
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .trailing))
                    }
                }
                .zIndex(2)
            }
            .zIndex(1)
        }
    }
}
