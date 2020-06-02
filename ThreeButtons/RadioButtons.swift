//
//  DetailView.swift
//  ThreeButtons
//
//  Created by Djirro on 02.06.2020.
//  Copyright © 2020 Djirro. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let id: Int
    @Binding var currentlySelectedId: Int
    
    var text: String
    
    var body: some View {
        Button(action: { self.currentlySelectedId = self.id }, label: { Text(text) })
            .foregroundColor(id == currentlySelectedId ? .white : .blue)
            .background(
                Circle()
                    .fill(id == currentlySelectedId ? Color.blue :  Color.white)
                    .frame(width: 60, height: 60)
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 2)
                            .foregroundColor(.blue)
                            .padding(0)
                )
            
        )
    }
}


struct RadioButtons: View {
    @State var currentlySelectedId: Int = 0
    var body: some View {
        HStack(spacing: 70) {
            DetailView(id: 1, currentlySelectedId: $currentlySelectedId, text: "1")
            
            
            
            DetailView(id: 2, currentlySelectedId: $currentlySelectedId, text: "2")
            
            
            
            DetailView(id: 3, currentlySelectedId: $currentlySelectedId, text: "3")
        }
    }
}

struct RadioButtons_Previews: PreviewProvider {
    static var previews: some View {
        RadioButtons()
    }
}
