
import SwiftUI

struct CreateHypedEvent: View {
    
    @StateObject var hypedEevent: HypedEvent = HypedEvent()
    
    var body: some View {
        Text("Create")
            .font(.title)
            .foregroundColor(.blue)
    }
}

struct CreateHypedEvent_Previews: PreviewProvider {
    static var previews: some View {
        CreateHypedEvent()
    }
}
