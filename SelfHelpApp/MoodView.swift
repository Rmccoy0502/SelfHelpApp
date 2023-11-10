import SwiftUI
    struct MoodView: View {
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
                Text("Choose your current mood:").font(.title2).foregroundColor(Color.init(red:0.786, green:0.460, blue:0.0));
                Picker(selection: $selectedMood, label: Text("Mood options")) {
                    ForEach(Class.allCases) {casename in
                        Text(casename.rawValue.capitalized)
                    }
                }.pickerStyle(.wheel).colorMultiply(Color.init(red:0.786, green:0.460, blue:0.0));
                
            }
            HStack{
                Button("Save Journal Entry"){
                    
                }.font(.title).foregroundColor(Color.init(red:0.786, green:0.460, blue:0.0));
            }
            
        }
    }
}

