
import SwiftUI

struct CreateHypedEvent: View {
    
    @StateObject var hypedEevent: HypedEvent = HypedEvent()
    
    var body: some View {
        Form{
            Section{
                FormLabelView(text: "Title", systemName: "keyboard", backgroundColor: .green)
                TextField("Name of Event", text: $hypedEevent.title)
                    .autocapitalization(.words)
            }
            
            Section{
                FormLabelView(text: "Date", systemName: "calendar", backgroundColor: .purple)
                DatePicker("Date", selection: $hypedEevent.date, displayedComponents: [.date, .hourAndMinute])
                    .datePickerStyle(GraphicalDatePickerStyle())
            }
            
            Section{
                ColorPicker(selection: $hypedEevent.color){
                    FormLabelView(text: "Color", systemName: "eyedropper", backgroundColor: .yellow)
                }
            }
            
            Section{
                FormLabelView(text: "URL", systemName: "link", backgroundColor: .orange)
                TextField("WonderWoman.com", text: $hypedEevent.url)
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
