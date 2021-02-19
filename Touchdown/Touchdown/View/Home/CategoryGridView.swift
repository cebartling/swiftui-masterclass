//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Christopher Bartling on 2/18/21.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout,
                      alignment: .center,
                      spacing: columnSpacing,
                      pinnedViews: [],
                      content: {
                        ForEach(categories) { category in
                            CategoryItemView(category: category)
                        }
            })
                .frame(height: 140)
                .padding(.horizontal, 15)
                .padding(.vertical, 10)
        })
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
