import SwiftUI

struct ContentView: View {
    @State var text = ""
    
    var body: some View {
        VStack {
            Label("ID#", systemImage: "")
                .font(.system(size: 36))
            TextField("Enter ID Here", text: $text).foregroundColor(.blue)
            
        }
    }
}
