
import SwiftUI

struct CreateHypedEvent: View {
    
    @StateObject var hypedEevent: HypedEvent = HypedEvent()
    
    var body: some View {
        Form{
            Section{
                FormLabelView(text: "Title", systemName: "keyboard", backgroundColor: Color.blue)
                TextField("Name of Event", text: $hypedEevent.title)
                    .autocapitalization(.words)
            }
            
            Section{
                FormLabelView(text: "Date", systemName: "calendar", backgroundColor: Color.purple)
                DatePicker("Date", selection: $hypedEevent.date, displayedComponents: [.date, .hourAndMinute])
                    .datePickerStyle(GraphicalDatePickerStyle())
            }
            
            Section{
                ColorPicker("Color", selection: $hypedEevent.color)
            }
            
            Section{
                TextField("Website", text: $hypedEevent.url)
                    .keyboardType(.URL)
            }
            
        }
    }
}

struct CreateHypedEvent_Previews: PreviewProvider {
    static var previews: some View {
        CreateHypedEvent()
    }
}
