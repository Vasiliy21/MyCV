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
                    .zIndex(1)


                ZStack {
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.asymmetric(insertion: .scale, removal: .move(edge: .top)))
                    }
                }
                .animation(.linear, value: showLaunchView)
                .zIndex(2)
            }
        }
    }
}
