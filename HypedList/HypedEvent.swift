//
//  HypedEvent.swift
//  HypedList
//
//  Created by George Higbie on 12/30/20.
//

import Foundation
import SwiftUI
import SwiftDate

class HypedEvent: ObservableObject, Identifiable {
    var id = UUID().uuidString
    var date: Date = Date()
    var title: String = ""
    var url: String = ""
    var color: Color = Color.purple
    @Published var imageData: Data?
    
    func image() -> Image?{
        if let data = imageData {
            if let uiImage = UIImage(data: data){
                return Image(uiImage: uiImage)
            }
        }
        return nil
    }
    
    func dateAsString() -> String {
        let formatter = DateFormatter()
        if date.compare(.isThisYear){
            formatter.dateFormat = "MMM dd"
        }else{
            formatter.dateFormat = "MMM dd yyyy"
        }
        return formatter.string(from: date)
    }
    
    func timeFromNow() -> String {
        return date.toRelative()
    }
}

var testHypedEvent1: HypedEvent{
    let hypedEvent = HypedEvent()
    
    if let image = UIImage(named: "wwdc"){
        if let data = image.pngData(){
            hypedEvent.imageData = data
        }
    }
    
    hypedEvent.title = "WWD 2021"
    hypedEvent.color = .green
    hypedEvent.date = Date() + 4.days
    hypedEvent.url = "apple.com"
    
    return hypedEvent
}

var testHypedEvent2: HypedEvent{
    let hypedEvent = HypedEvent()
    hypedEvent.title = "Trip to alpines"
    hypedEvent.color = .blue
    hypedEvent.date = Date() + 2.days
    return hypedEvent
}
