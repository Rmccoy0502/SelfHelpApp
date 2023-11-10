import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            HStack{
                Image("Mood").resizable().frame(width: 400, height: 400);
                Text("Welcome").font(.largeTitle).bold();  }.frame(minWidth: 400, idealWidth: 400, maxWidth: .infinity, minHeight: 400, idealHeight: 400, maxHeight: 400, alignment: .topLeading)
            
};
        VStack{
            Text("Feel like you can't keep it together?").bold();
            Text("Hard to keep track of your mood?").bold();
            Text("This app is here to help").bold();
    
    
}
    }
    }

