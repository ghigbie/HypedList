//
//  HypedEventTileView.swift
//  HypedList
//
//  Created by George Higbie on 1/3/21.
//

import SwiftUI

struct HypedEventTileView: View {
    
    var hypedEvent: HypedEvent
    
    var body: some View {
        VStack (spacing: 0){
            if hypedEvent.image() != nil {
                hypedEvent.image()!
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            Rectangle()
                .foregroundColor(hypedEvent.color)
                .frame(height: 10)
            HStack{
                Text(hypedEvent.title)
                    .font(.title)
                    .padding(.leading, 12)
                    .padding(.top, 4)
                    .background(Color.white)
                Spacer()
            }
            .background(Color.white)
            HStack{
                Image(systemName: "calendar")
                    .foregroundColor(.red)
                Text(hypedEvent.dateAsString())
                Spacer()
                Text(hypedEvent.timeFromNow())
                Image(systemName: "clock.fill")
                    .foregroundColor(.blue)
            }
            .font(.title3)
            .padding(.horizontal, 12)
            .padding(.bottom, 12)
            .background(Color.white)
            
        }
        .cornerRadius(12)
        .shadow(radius: 12 )
        .padding()
    }
}

struct HypedEventTileView_Previews: PreviewProvider {
    static var previews: some View {
        HypedEventTileView(hypedEvent: testHypedEvent1)
            .previewLayout(.sizeThatFits)
    }
}
