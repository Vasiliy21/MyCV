//
//  LaunchView.swift
//  MyCV
//
//  Created by Vasiliy on 22.11.2022.
//

import SwiftUI

struct LaunchView: View {
    
    @State private var showLoadingLine = true
    @State private var counter = 0
    @Binding var showLaunchView: Bool

    let timer = Timer.publish(every: 0.5, on: .main, in: .common).autoconnect()

    var body: some View {
        ZStack {
                Color.black
                .cornerRadius(10)
                    .ignoresSafeArea()
                VStack(spacing: 15) {
                    Text("My CV App")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    ZStack {
                        RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(.white, lineWidth: 3)
                        HStack {
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .frame(width: showLoadingLine ? 0 : UIScreen.main.bounds.width - 100, height: 10)
                                .animation(.spring(response: 0.6, dampingFraction: 1.2).delay(0.4), value: showLoadingLine)

                            Spacer(minLength: 0)

                        }
                    }
                    .frame(width: UIScreen.main.bounds.width - 100, height: 10)
                }
                .opacity(showLoadingLine ? 0 : 1)
                .animation(.easeIn(duration: 0.3), value: showLoadingLine)
        }
        .foregroundColor(.white)
        .onAppear {
            showLoadingLine.toggle()
        }
        .onReceive(timer) { time in
            if counter == 3 {
                showLaunchView.toggle()

                timer.upstream.connect().cancel()
            }
            counter += 1

        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(showLaunchView: .constant(true))
    }
}
