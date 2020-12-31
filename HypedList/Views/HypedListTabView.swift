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
            UpcomingView()
                .tabItem { Text("Upcoming") }
            DiscoverView()
                .tabItem { Text("Discover") }
            PastView()
                .tabItem { Text("Past")}
        }
    }
}

struct HypedListTabView_Previews: PreviewProvider {
    static var previews: some View {
        HypedListTabView()
    }
}
