import SwiftUI

struct UpcomingView: View {
    @State var showingCreateView = false
    var hypedEvents: [HypedEvent] = []
    
    var body: some View {
        ScrollView{
            VStack{
                if(hypedEvents.count == 0 ){
                    Text("Nothing to look forward to 😢 \n Create an event or check out the Discover tab!")
                        .bold()
                        .multilineTextAlignment(.center)
                }else{
                    ForEach(hypedEvents) { hypedEvent in
                        HypedEventTileView(hypedEvent: hypedEvent)
                    }
                }
            }
        }
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
        
        Group {
            NavigationView{
                UpcomingView(hypedEvents: [testHypedEvent1, testHypedEvent2 ])
            }
            
            NavigationView{
                UpcomingView(hypedEvents: [])
            }
            
        }
    }
}
