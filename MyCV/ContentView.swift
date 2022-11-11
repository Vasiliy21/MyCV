//
//  ContentView.swift
//  MyCV
//
//  Created by Vasiliy on 05.10.2022.
//

import SwiftUI

struct ContentView: View {
@State private var linksViewIsPresented = false

    var body: some View {
        ZStack {
            Image("Back2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                .scaleEffect(1.2)
                .blur(radius: 2)
            VStack {
                Image("Me")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .scaleEffect(1.7)
                    .frame(width: 300, height: 300)
                    .offset(x: -15, y: -110)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(lineWidth: 7))
                    .foregroundColor(.white)
                Text("Vasiliy Startsev")
                    .fontWeight(.heavy)
                    .font(.title)
                    .foregroundColor(.white)
                Text("IOS developer")
                    .font(.title2)
                    .foregroundColor(.white)

                Spacer()

                ButtonView(title: "Hard skills", color: .white, action: {})
                ButtonView(title: "My links", color: .white, action: {
                    linksViewIsPresented.toggle()
                }
                ).sheet(isPresented: $linksViewIsPresented) {
                    LinksView(linksViewIsPresented: $linksViewIsPresented)
                }
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
