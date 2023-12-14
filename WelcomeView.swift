import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()

                HStack {
                    Spacer()
                    Image(systemName: "heart.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.orange)
                        .padding()
                    Spacer()
                }

                Text("Welcome")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)

                Spacer()

                VStack(spacing: 10) {
                    Text("Although you may feel alone, you are not!")
                        .font(.headline)
                        .foregroundColor(.black)
                        .padding()

                    Text("I am proud of you for being brave enough to seek help!")
                        .font(.headline)
                        .foregroundColor(.black) // Set text color to black
                        .padding()

                    Text("YOU ARE LOVED & YOU ARE SEEN")
                        .font(.custom("Helvetica-Bold", size: 18))
                        .foregroundColor(Color.orange)
                        .padding()
                }

                Spacer()
            }
        }
    }
}



