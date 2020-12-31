import SwiftUI

struct UpcomingView: View {
    @State var showingCreateView = false
    
    var body: some View {
        Text("Upcoming View")
            .navigationTitle("Upcoming")
            .navigationBarItems(trailing:
                Button(action: {
                    showingCreateView = true
                }){
                    Image(systemName: "calendar.badge.plus")
                        .font(.title)
                })
            .sheet(isPresented: $showingCreateView, content: {CreateHypedEvent()})
    }
}

struct UpcomingView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingView()
    }
}
