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
