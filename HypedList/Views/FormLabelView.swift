
import SwiftUI

struct FormLabelView: View {
    var text: String
    var systemName: String
    var backgroundColor: Color
    
    var body: some View {
        Label{
            Text(text)
        }
        icon: {
            Image(systemName: systemName)
                .padding(5)
                .background(backgroundColor)
                .cornerRadius(7)
                .foregroundColor(.white)
        }
    }
}

struct FormLabelView_Previews: PreviewProvider {
    static var previews: some View {
        FormLabelView(text: "URL", systemName: "link", backgroundColor: .red)
            .previewLayout(.sizeThatFits)
    }
}
