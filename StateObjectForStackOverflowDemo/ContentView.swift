//
//  ContentView.swift
//  StateObjectForStackOverflowDemo
//
//  Created by Alexander Khitev on 8/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            let route = Route.detail
            NavigationLink("Show Detail", value: route)
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .detail:
                        DetailView()
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
