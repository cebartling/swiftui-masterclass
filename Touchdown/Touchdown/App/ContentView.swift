//
//  ContentView.swift
//  Touchdown
//
//  Created by Christopher Bartling on 2/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        FooterView()
            .padding(.horizontal)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
