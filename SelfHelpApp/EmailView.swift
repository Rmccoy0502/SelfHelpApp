import SwiftUI
import MessageUI

struct EmailView: View {
    
    @State private var isShowingMailView = false
    @State var email:String = "example@none.com"

    var body: some View {
        VStack {
            if isShowingMailView {
                Text("Email Sent!!!!")
            } else {
            HStack{
                Text("Healthcare Prider Email: ")
            TextField("Healthcare Prider Email: ", text: $email)
            }
            Button(action: {
                self.isShowingMailView.toggle()
            }) {
                Image(systemName: "envelope")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Send Email")
            }
            }

        }
    }
}


