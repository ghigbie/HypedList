//
//  ContentView.swift
//  HypedList
//
//  Created by George Higbie on 12/30/20.
//

import SwiftUI

struct HypedListTabView: View {
    var body: some View {
        TabView{
            Text("test 1")
                .tabItem { Text("Upcoming") }
            Text("test 2")
                .tabItem { Text("Discover") }
            Text("test 3")
                .tabItem { Text("Past")}
        }
    }
}

struct HypedListTabView_Previews: PreviewProvider {
    static var previews: some View {
        HypedListTabView()
    }
}
