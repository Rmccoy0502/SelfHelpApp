import SwiftUI

struct RegistrationView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var registrationComplete: Bool = false

    var body: some View {
        NavigationView {
            VStack {
                TextField("First Name", text: $firstName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    

                TextField("Last Name", text: $lastName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    

                TextField("Email", text: $email)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    

                NavigationLink(destination: RegistrationConfirmationView(firstName: firstName, lastName: lastName, email: email), isActive: $registrationComplete) {
                    Button("Submit") {
                        
                        print("First Name: \(firstName)")
                        print("Last Name: \(lastName)")
                        print("Email: \(email)")

                        
                        registrationComplete = true
                    }
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color(red: 0.786, green: 0.460, blue: 0.0))
                    .cornerRadius(8)
                }
            }
            .padding()
            .navigationBarTitle("Registration")
        }
    }
}

struct RegistrationConfirmationView: View {
    var firstName: String
    var lastName: String
    var email: String

    var body: some View {
        VStack {
            Text("Registration Complete")
                .font(.title)
                .padding()
                .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))

            Text("First Name: \(firstName)")
                .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))
            Text("Last Name: \(lastName)")
                .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))
            Text("Email: \(email)")
                .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))
        }
        .navigationBarTitle("Confirmation")
    }
}
