//
//  CreateHypedEventLabel.swift
//  HypedList
//
//  Created by George Higbie on 1/1/21.
//

import SwiftUI

struct CreateHypedEventLabel: View {
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

struct CreateHypedEventLabel_Previews: PreviewProvider {
    static var previews: some View {
        CreateHypedEventLabel(text: "Test", systemName: "keyboard", backgroundColor: Color.red)
    }
}
