//
//  HypedEvent.swift
//  HypedList
//
//  Created by George Higbie on 12/30/20.
//

import Foundation
import SwiftUI

class HypedEvent: ObservableObject {
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
    hypedEvent.date = Date()
    hypedEvent.url = "apple.com"
    
    return hypedEvent
}

var testHypedEvent2: HypedEvent{
    let hypedEvent = HypedEvent()
    hypedEvent.title = "Trip to alpines"
    hypedEvent.color = .blue
    hypedEvent.date = Date()
    return hypedEvent
}
