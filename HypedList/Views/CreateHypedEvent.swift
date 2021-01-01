
import SwiftUI

struct CreateHypedEvent: View {
    
    @StateObject var hypedEevent: HypedEvent = HypedEvent()
    
    var body: some View {
        Form{
            Section{
            TextField("Name of Event", text: $hypedEevent.title)
                .autocapitalization(.words)
            }
            
            Section{
                DatePicker("Date", selection: $hypedEevent.date, displayedComponents: [.date, .hourAndMinute])
                    .datePickerStyle(GraphicalDatePickerStyle())
            }
            
        }
    }
}

struct CreateHypedEvent_Previews: PreviewProvider {
    static var previews: some View {
        CreateHypedEvent()
    }
}
