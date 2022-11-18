//
//  LinksView.swift
//  MyCV
//
//  Created by Vasiliy on 05.10.2022.
//

import SwiftUI

struct LinksView: View {
    @Binding var linksViewIsPresented: Bool

    @Binding var TGHalfLinksViewIsPresented: Bool
    @Binding var WhatsHalfLinksViewIsPresented: Bool
    @Binding var VKHalfLinksViewIsPresented: Bool

    var body: some View {

        VStack {
            HStack {
                Spacer()

                Button("Back") {
                    linksViewIsPresented.toggle()
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle)
                .padding()
            }


            Spacer()

            ButtonLinkView(image: "message", title: "Telegram", textColor: .blue, buttonColor: .white, action: {TGHalfLinksViewIsPresented.toggle()}).halfSheet(showSheet: $TGHalfLinksViewIsPresented) {
                QrCodeView(image: "TG")
            }
            ButtonLinkView(image: "message", title: "WhatsApp", textColor: .green, buttonColor: .white, action: {WhatsHalfLinksViewIsPresented.toggle()}).halfSheet(showSheet: $WhatsHalfLinksViewIsPresented) {
                QrCodeView(image: "Whats")
            }
            ButtonLinkView(image: "message", title: "VK", textColor: Color(hue: 0.611, saturation: 1.0, brightness: 1.0), buttonColor: .white, action: {VKHalfLinksViewIsPresented.toggle()}).halfSheet(showSheet: $VKHalfLinksViewIsPresented) {
                QrCodeView(image: "VK")
            }
            ButtonLinkView(image: "envelope", title: "Email", textColor: .gray, buttonColor: .white, action: {})
            ButtonLinkView(image: "phone", title: "Phone number", textColor: .black, buttonColor: .white, action: {})

            Spacer()
        }
    }
}


struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            LinksView(linksViewIsPresented: .constant(true), TGHalfLinksViewIsPresented: .constant(false), WhatsHalfLinksViewIsPresented: .constant(false), VKHalfLinksViewIsPresented: .constant(false))
        }
    }
}

struct ButtonLinkView: View {

    let image: String
    let title: String
    let textColor: Color
    let buttonColor: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: UIScreen.main.bounds.width - 42, height: 65)
                .foregroundColor(buttonColor)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 3).foregroundColor(textColor))
                .overlay(
                    HStack(spacing: 10) {
                        Image(systemName: image)
                        Text(title)
                    }
                        .font(.largeTitle)
                        .foregroundColor(textColor))
        }
        .padding([.top, .bottom], 6)
    }
}


extension View {
    func halfSheet<SheetView: View>(showSheet: Binding<Bool>, @ViewBuilder sheetView: @escaping() -> SheetView) -> some View {

        return self
            .background {
                HalfSheetHelper(halfLinksViewIsPresented: showSheet, sheetView: sheetView())
            }
    }
}

struct HalfSheetHelper<SheetView: View>: UIViewControllerRepresentable {
    @Binding var halfLinksViewIsPresented: Bool
    var sheetView: SheetView
    let controller = UIViewController()

    func makeUIViewController(context: Context) -> UIViewController {
        controller.view.backgroundColor = .clear
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        if halfLinksViewIsPresented {

            let sheetController = CustomHostingController(rootView: sheetView)
            uiViewController.present(sheetController, animated: true) {
                DispatchQueue.main.async {
                    self.halfLinksViewIsPresented.toggle()
                }
            }
        }
    }
}

class CustomHostingController<Content: View>: UIHostingController<Content> {
    override func viewDidLoad() {
        if let presentationController = presentationController as? UISheetPresentationController {
            presentationController.detents = [.medium()]
            presentationController.prefersGrabberVisible = true
        }
    }
}

