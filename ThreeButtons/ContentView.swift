//
//  ContentView.swift
//  ThreeButtons
//
//  Created by Djirro on 02.06.2020.
//  Copyright © 2020 Djirro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: RadioButtons()) {
                    Text("Show Detail View")
                }.navigationBarTitle("Navigation")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
