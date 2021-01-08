
import SwiftUI

struct CreateHypedEvent: View {
    @Environment(\.presentationMode) var presentationMode
    @StateObject var hypedEvent: HypedEvent = HypedEvent()
    @State var showTime = false
    @State var showImagePicker = false
    
    var body: some View {
        NavigationView{
            Form{
                
                Section{
                    FormLabelView(text: "Title", systemName: "keyboard", backgroundColor: .green)
                    TextField("Name of Event", text: $hypedEvent.title)
                        .autocapitalization(.words)
                }
                
                Section{
                    FormLabelView(text: "Date", systemName: "calendar", backgroundColor: .purple)
                    DatePicker("Date", selection: $hypedEvent.date, displayedComponents: showTime ? [.date, .hourAndMinute] : [.date])
                        .datePickerStyle(GraphicalDatePickerStyle())
                    Toggle(isOn: $showTime){
                        FormLabelView(text: "Time", systemName: "clock.fill", backgroundColor: .purple)
                    }
                }
                
                Section {
                    if hypedEvent.image() == nil {
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
                            Button(action: { hypedEvent.imageData = nil}){
                                Text("Remome Image")
                                    .foregroundColor(.red)
                            }
                            .buttonStyle(BorderlessButtonStyle())
                        }
                        Button(action: {
                            showImagePicker = true
                        }) {
                            hypedEvent.image()!
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                    }
                
                }.sheet(isPresented: $showImagePicker){
                    ImagePicker(imageData: $hypedEvent.imageData)
                }

                
                
                Section{
                    ColorPicker(selection: $hypedEvent.color){
                        FormLabelView(text: "Color", systemName: "eyedropper", backgroundColor: .yellow)
                    }
                }
                
                Section{
                    FormLabelView(text: "URL", systemName: "link", backgroundColor: .orange)
                    TextField("WonderWoman.com", text: $hypedEvent.url)
                        .keyboardType(.URL)
                }
                
                
            }//form
            .navigationBarItems(leading: Button(action: {
                presentationMode.wrappedValue.dismiss()
            }){
                Text("Cancel")
            }, trailing: Button(action: {
                DataController.shared.hypedEvents
                    .append(hypedEvent)
                presentationMode.wrappedValue.dismiss()
            }){
                Text("Done")
            })//navigationBarItems
            .navigationTitle("Create Event")
        }//navigationView
    }
}


struct CreateHypedEvent_Previews: PreviewProvider {
    static var previews: some View {
        CreateHypedEvent()
    }
}
