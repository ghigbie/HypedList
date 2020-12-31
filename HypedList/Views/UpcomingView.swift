import SwiftUI

struct UpcomingView: View {
    var body: some View {
        Text("Upcoming View")
            .navigationTitle("Upcoming")
            .navigationBarItems(trailing:
                Button(action: {}){
                    Image(systemName: "calendar.badge.plus")
                        .font(.title)
                })
    }
}

struct UpcomingView_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingView()
    }
}
