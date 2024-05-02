import SwiftUI

struct trial: View {
    @State private var isDatePickerShown = false

    var body: some View {
        VStack {
            
            Button(action: {
                isDatePickerShown.toggle()
            }) {
                Text("Select Date")
                    .padding()
            }
        }
        .fullScreenCover(isPresented: $isDatePickerShown) {
            NavigationView {
                DatePickerView(isDatePickerShown: $isDatePickerShown)
            }
        }
    }
}

struct DatePickerView: View {
    @Binding var isDatePickerShown: Bool
    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            Text("\(selectedDate)")
            DatePicker("Select a date", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
                .datePickerStyle(CompactDatePickerStyle())
                .padding()

            Button(action: {
                isDatePickerShown = false
            }) {
                Text("Done")
            }
            .padding()
        }
        .navigationBarItems(trailing: Button("Cancel") {
            isDatePickerShown = false
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        trial()
    }
}
