//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Christopher Bartling on 3/3/21.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")

            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })
            .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
