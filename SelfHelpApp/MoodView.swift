import SwiftUI

struct MoodView: View {
    @State private var journalEntry = JournalEntry(userName: "", selectedMood: .happy, optionalJournalEntry: "")

    enum MoodClass: String, CaseIterable, Identifiable {
        case happy, overjoyed, anxious, sad, exhausted, stressed, overwhelmed, unsure

        var id: Self { self }
    }

    struct JournalEntry {
        var userName: String
        var selectedMood: MoodClass
        var optionalJournalEntry: String
    }

    var body: some View {
        VStack {
            HStack {
                Text("Choose your current mood:")
                    .font(.title2)
                    .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))

                Picker(selection: $journalEntry.selectedMood, label: Text("Mood options")) {
                    ForEach(MoodClass.allCases) { mood in
                        Text(mood.rawValue.capitalized)
                    }
                }
                .pickerStyle(.wheel)
                .colorMultiply(Color(red: 0.786, green: 0.460, blue: 0.0))
            }

            TextField("Enter your name", text: $journalEntry.userName)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            TextEditor(text: $journalEntry.optionalJournalEntry)
                .padding()
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .frame(minHeight: 100) // Set the desired height

            HStack {
                Button("Save Journal Entry") {
                    saveJournalEntry()
                }
                .font(.title)
                .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))
            }
        }
        .padding()
    }

    func saveJournalEntry() {
        print("Journal Entry Saved:")
        print("User Name: \(journalEntry.userName)")
        print("Selected Mood: \(journalEntry.selectedMood.rawValue)")
        print("Optional Journal Entry: \(journalEntry.optionalJournalEntry)")
    }
}
