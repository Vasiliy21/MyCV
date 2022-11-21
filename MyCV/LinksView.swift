//
//  LinksView.swift
//  MyCV
//
//  Created by Vasiliy on 05.10.2022.
//

import SwiftUI

struct LinksView: View {
    @Binding var linksViewIsPresented: Bool

    @State private var halfTGLinksViewIsPresented = false
    @State private var halfWhatsLinksViewIsPresented = false
    @State private var halfVKLinksViewIsPresented = false

    @State private var mailConfirmationDialogIsPresented = false
    @State private var phoneConfirmationDialogIsPresented = false

    private let currentScreenBrightness = UIScreen.main.brightness

    var body: some View {
        ZStack {
            Color(#colorLiteral(
                red: 0.921431005,
                green: 0.9214526415,
                blue: 0.9214410186,
                alpha: 1
            ))
                .ignoresSafeArea()

            VStack {
                HStack {

                    Spacer()

                    Button(action: {
                        linksViewIsPresented.toggle()
                    }) {
                        Image(systemName: "multiply")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                            .padding(.trailing, 16)
                    }
                }

                Spacer()

                ButtonsLinksView(
                    image: "message",
                    title: "Telegram",
                    textColor: Color(#colorLiteral(
                        red: 0.2296479344,
                        green: 0.7099092603,
                        blue: 0.9512149692,
                        alpha: 1)),
                    buttonColor: .white,
                    urlLink: "https://t.me/vasiliystar",
                    codeAction: {
                        halfTGLinksViewIsPresented.toggle()
                        UIScreen.main.brightness = CGFloat(1)
                    })
                .halfSheet(showSheet: $halfTGLinksViewIsPresented) {
                    QrCodeView(image: "TG")
                        .onDisappear() {
                            UIScreen.main.brightness = currentScreenBrightness
                        }
                }
                
                ButtonsLinksView(
                    image: "message",
                    title: "WhatsApp",
                    textColor: Color(#colorLiteral(
                        red: 0,
                        green: 0.8307308555,
                        blue: 0.007691053208,
                        alpha: 1
                    )),
                    buttonColor: .white,
                    urlLink: "https://wa.me/qr/UJQ4YNM3NFYNG1",
                    codeAction: {
                        halfWhatsLinksViewIsPresented.toggle()
                        UIScreen.main.brightness = CGFloat(1)
                    })
                .halfSheet(showSheet: $halfWhatsLinksViewIsPresented) {
                    QrCodeView(image: "Whats")
                        .onDisappear() {
                            UIScreen.main.brightness = currentScreenBrightness
                        }
                }

                ButtonsLinksView(
                    image: "message",
                    title: "VK",
                    textColor: Color(#colorLiteral(
                        red: 0,
                        green: 0.4684073925,
                        blue: 0.9988809228,
                        alpha: 1
                    )),
                    buttonColor: .white,
                    urlLink: "https://vk.com/vasiliystartsev1",
                    codeAction: {
                        halfVKLinksViewIsPresented.toggle()
                        UIScreen.main.brightness = CGFloat(1)
                    })
                .halfSheet(showSheet: $halfVKLinksViewIsPresented) {
                    QrCodeView(image: "VK")
                        .onDisappear() {
                            UIScreen.main.brightness = currentScreenBrightness
                        }
                }

                ButtonLinkView(
                    image: "envelope",
                    title: "Email",
                    textColor: .gray,
                    buttonColor: .white,
                    action: {
                        mailConfirmationDialogIsPresented.toggle()
                    })
                .confirmationDialog(
                    "Mail",
                    isPresented: $mailConfirmationDialogIsPresented,
                    titleVisibility: .visible) {
                        Button("Copy") {
                            UIPasteboard.general.string = "vasiliystartsev@gmail.com"
                        }
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("vasiliystartsev@gmail.com")
                    }

                ButtonLinkView(
                    image: "phone",
                    title: "Phone number",
                    textColor: .black,
                    buttonColor: .white,
                    action: {
                        phoneConfirmationDialogIsPresented.toggle()
                    })
                .confirmationDialog(
                    "Phone number",
                    isPresented: $phoneConfirmationDialogIsPresented,
                    titleVisibility: .visible) {
                        Button("Copy") {
                            UIPasteboard.general.string = "+7 (985) 808-90-07"
                        }
                        Button("Cancel", role: .cancel) {}
                    } message: {
                        Text("+7 (985) 808-90-07")
                    }

                Spacer()

            }
        }
    }
}




struct LinksView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            LinksView(linksViewIsPresented: .constant(true))
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
                .frame(width: UIScreen.main.bounds.width - 22, height: 65)
                .foregroundColor(textColor)
                .overlay(
                    HStack(spacing: 10) {
                        Image(systemName: image)
                        Text(title)
                    }
                        .font(.largeTitle)
                        .foregroundColor(buttonColor))
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

class CustomHostingController<Content: View>:
    UIHostingController<Content> {
    override func viewDidLoad() {
        if let presentationController = presentationController as? UISheetPresentationController {
            presentationController.detents = [.medium()]
            presentationController.prefersGrabberVisible = true
        }
    }
}

