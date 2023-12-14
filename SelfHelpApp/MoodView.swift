import SwiftUI

struct MoodView: View {
    @State private var journalEntry = JournalEntry(userName: "", selectedMood: .happy, optionalJournalEntry: "")
    @State private var selectedDate = Date()
    @State private var selectedTime = Date()
    @State private var isJournalEntrySaved = false

    enum MoodClass: String, CaseIterable, Identifiable {
        case happy = "Happy", overjoyed = "Overjoyed", anxious = "Anxious", sad = "Sad", exhausted = "Exhausted", stressed = "Stressed", overwhelmed = "Overwhelmed", unsure = "Unsure"

        var id: Self { self }
    }

    struct JournalEntry {
        var userName: String
        var selectedMood: MoodClass
        var optionalJournalEntry: String
    }

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Choose your current mood:")
                        .font(.title2)
                        .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))

                    Picker(selection: $journalEntry.selectedMood, label: Text("Mood options")) {
                        ForEach(MoodClass.allCases) { mood in
                            Text(mood.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                    .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))
                }

                TextField("Your Name", text: $journalEntry.userName)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                ZStack(alignment: .topLeading) {
                    TextEditor(text: $journalEntry.optionalJournalEntry)
                        .padding()
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .frame(minHeight: 100)
                        .background(Color(red: 0.9, green: 0.9, blue: 0.9))

                    if journalEntry.optionalJournalEntry.isEmpty {
                        Text("Optional Journal Entry")
                            .font(.headline)
                            .foregroundColor(.gray)
                            .padding(4)
                    }
                }

                HStack {
                    DatePicker("Date", selection: $selectedDate, displayedComponents: .date)
                        .labelsHidden()
                        .datePickerStyle(.compact)
                        .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))

                    DatePicker("Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                        .labelsHidden()
                        .datePickerStyle(.compact)
                        .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))
                }

                Button("Save Journal Entry") {
                    saveJournalEntry()
                }
                .font(.title)
                .foregroundColor(Color.white)
                .background(Color(red: 0.786, green: 0.460, blue: 0.0))
                .cornerRadius(8)
                .padding()

                NavigationLink(
                    destination: JournalEntryConfirmationView(journalEntry: journalEntry, selectedDate: selectedDate, selectedTime: selectedTime),
                    isActive: $isJournalEntrySaved
                ) {
                    EmptyView()
                }

                
                Text(journalEntry.selectedMood.rawValue)
                    .font(.system(size: 20 + CGFloat(journalEntry.selectedMood.rawValue.count) * 2))
                    .padding()
            }
            .padding()
            .navigationBarTitle("Mood Journal")
        }
    }

    func saveJournalEntry() {
        
        print("Journal Entry Saved:")
        print("Your Name: \(journalEntry.userName)")
        print("Selected Mood: \(journalEntry.selectedMood.rawValue)")
        print("Optional Journal Entry: \(journalEntry.optionalJournalEntry)")
        print("Selected Date: \(selectedDate)")
        print("Selected Time: \(selectedTime)")

        isJournalEntrySaved = true
    }
}

struct JournalEntryConfirmationView: View {
    var journalEntry: MoodView.JournalEntry
    var selectedDate: Date
    var selectedTime: Date

    var body: some View {
        VStack {
            Text("Journal Entry Confirmation")
                .font(.title)
                .foregroundColor(Color(red: 0.786, green: 0.460, blue: 0.0))
                .padding()

            Text("Your Name: \(journalEntry.userName)")
            Text("Selected Mood: \(journalEntry.selectedMood.rawValue)")
            Text("Optional Journal Entry: \(journalEntry.optionalJournalEntry)")
            Text("Selected Date: \(formattedDate)")
            Text("Selected Time: \(formattedTime)")
        }
        .navigationBarTitle("Confirmation", displayMode: .inline)
    }

    private var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        return dateFormatter.string(from: selectedDate)
    }

    private var formattedTime: String {
        let timeFormatter = DateFormatter()
        timeFormatter.timeStyle = .short
        return timeFormatter.string(from: selectedTime)
    }
}
