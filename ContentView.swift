import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
           
            Button("Showing Alert") {
                showingAlert = true
            }
            .alert("Confirm Checkout?", isPresented: $showingAlert) {
                Button("OK",role: .destructive) { }
            }

            Label("ID#", systemImage: "")
                .font(.system(size: 36))
            TextField("Enter ID Here", text: $text).foregroundColor(.blue)
            
        }
    }
}
