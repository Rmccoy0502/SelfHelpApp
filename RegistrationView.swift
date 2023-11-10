import SwiftUI

struct RegistrationView: View {
    @State var userName:String;
    @State var selectedMood:Class;
    
    enum Class:String, CaseIterable, Identifiable{
        case happy;
        case overjoyed;
        case anxious;
        case sad;
        case exhausted;
        case stressed;
        case overwhelmed;
        case unsure;
        
        var id:Self {self}
    }
    
    init() {
        userName = "";
        selectedMood = Class.happy
    }
    
    var body: some View {
        VStack {
            HStack{
                Text("What is your first name? : ").font(.title2).foregroundColor(Color.init(red:0.786, green:0.460, blue:0.0));
                TextField("Enter First name", text:$userName);
                }
            HStack{
                Text("What is your last name? : ").font(.title2).foregroundColor(Color.init(red:0.786, green:0.460, blue:0.0));                 TextField("Enter last name", text:$userName);
            }
            HStack{
                Text("What is your email address?: ").font(.title2).foregroundColor(Color.init(red:0.786, green:0.460, blue:0.0));                 TextField("Enter Email Address. ex: @gmail, @yahoo, @icloud, etc.", text:$userName);
            }
        }
    }
    
}
            

