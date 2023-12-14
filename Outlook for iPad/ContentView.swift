import SwiftUI
import BetterSafariView
 

struct ContentView: View {
    @State private var presentingSafariView = false
    var body: some View {
        let screen = UIScreen.main.bounds
        let screenWidth = screen.size.width
        let screenHeight = screen.size.height
        
        
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
        .offset(x: 0, y: -50)
        .frame(width: screenWidth, height: screenHeight+250)
    }
    
}
