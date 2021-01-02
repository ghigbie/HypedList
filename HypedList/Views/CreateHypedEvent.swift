
import SwiftUI

struct CreateHypedEvent: View {
    
    @StateObject var hypedEevent: HypedEvent = HypedEvent()
    
    var body: some View {
        Form{
            Section{
                Label{
                    Text("Title")
                } icon: {
                    Image(systemName: "keyboard")
                        .padding(5)
                        .background(Color.blue)
                        .cornerRadius(7)
                        .foregroundColor(.white)
                    
                }
            TextField("Name of Event", text: $hypedEevent.title)
                .autocapitalization(.words)
            }
            
            Section{
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
