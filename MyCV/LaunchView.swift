//
//  LaunchView.swift
//  MyCV
//
//  Created by Vasiliy on 22.11.2022.
//

import SwiftUI

struct LaunchView: View {
    @Binding var showLaunchView: Bool
    @State var showLoadingLine = true

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State private var counter = 0

    var body: some View {
        ZStack {
            Color.black
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
                                    .animation(.spring(response: 0.7, dampingFraction: 1.3), value: showLoadingLine)

                                Spacer(minLength: 0)

                            }
                        }
                    .frame(width: UIScreen.main.bounds.width - 100, height: 10)
                }
                .foregroundColor(.white)
        }
        .onAppear {
            showLoadingLine.toggle()
        }
        .onReceive(timer) { time in
            if counter == 2 {
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
