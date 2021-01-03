
import SwiftUI

struct CreateHypedEvent: View {
    
    @StateObject var hypedEevent: HypedEvent = HypedEvent()
    @State var showTime = false
    @State var showImagePicker = false
    
    var body: some View {
        Form{
            
            Section{
                FormLabelView(text: "Title", systemName: "keyboard", backgroundColor: .green)
                TextField("Name of Event", text: $hypedEevent.title)
                    .autocapitalization(.words)
            }
            
            Section{
                FormLabelView(text: "Date", systemName: "calendar", backgroundColor: .purple)
                DatePicker("Date", selection: $hypedEevent.date, displayedComponents: showTime ? [.date, .hourAndMinute] : [.date])
                    .datePickerStyle(GraphicalDatePickerStyle())
                Toggle(isOn: $showTime){
                    FormLabelView(text: "Time", systemName: "clock.fill", backgroundColor: .purple)
                }
            }
            
            Section {
                if hypedEevent.imageData == nil {
                    HStack {
                        FormLabelView(text: "Image", systemName: "camera", backgroundColor: .pink)
                        Spacer()
                        Button(action: { showImagePicker = true}){
                            Text("Pick Image")
                        }
                    }
                }else{
                    HStack {
                        FormLabelView(text: "Image", systemName: "camera", backgroundColor: .pink)
                        Spacer()
                        Button(action: { hypedEevent.imageData = nil}){
                            Text("Remome Image")
                        }
                    }
                    Image("wwdc")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    }
            
//            if hypedEevent.imageData != nil {
//                Image(uiImage: UIImage(data: $hypedEevent.imageData!)!)
//            }
            }.sheet(isPresented: $showImagePicker){
                ImagePicker(imageData: $hypedEevent.imageData)
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
