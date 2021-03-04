//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Christopher Bartling on 3/3/21.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
            
            // DETAIL BOTTOM PART
            
            // RATINGS AND SIZES
            
            // DESCRIPTION
            
            // QUANTITY AND FAVORITES
            
            // ADD TO CART
            Spacer()
        })
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
                    .ignoresSafeArea(.all, edges: .all)
            )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
