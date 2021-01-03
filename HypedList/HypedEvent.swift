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
}
