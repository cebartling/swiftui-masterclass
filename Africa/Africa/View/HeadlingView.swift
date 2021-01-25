//
//  HeadlingView.swift
//  Africa
//
//  Created by Christopher Bartling on 1/24/21.
//

import SwiftUI

struct HeadlingView: View {
    let headingImage: String
    let headingText: String
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding()
    }
}

struct HeadlingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadlingView(headingImage: "photo.on.rectangle.angled",
                     headingText: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
