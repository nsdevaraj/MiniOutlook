import SwiftUI
import BetterSafariView
 

struct ContentView: View {
    @State private var presentingSafariView = false
    var body: some View {
        let screen = UIScreen.main.bounds
        let screenWidth = screen.size.width
        let screenHeight = screen.size.height
        
        Button(action: {
            self.presentingSafariView = true
        }) {
            Text("Buy me a Coffee ☕ !!")
        }
        .safariView(isPresented: $presentingSafariView) {
            SafariView(
                url: URL(string: "https://www.buymeacoffee.com/nsdevaraj")!,
                configuration: SafariView.Configuration(
                    entersReaderIfAvailable: false,
                    barCollapsingEnabled: true
                )
            )
            .preferredBarAccentColor(.clear)
            .preferredControlAccentColor(.accentColor)
            .dismissButtonStyle(.done)
        }
        SafariView(
            url: URL(string: "http://outlook.office.com/mail/")!,
            configuration: SafariView.Configuration(
                entersReaderIfAvailable: false,
                barCollapsingEnabled: true
            )
        )
        .preferredBarAccentColor(.clear)
        .preferredControlAccentColor(.accentColor)
        .dismissButtonStyle(.done)
        .offset(x: 0, y: -80)
        .frame(width: screenWidth, height: screenHeight+88)
    }
    
}
