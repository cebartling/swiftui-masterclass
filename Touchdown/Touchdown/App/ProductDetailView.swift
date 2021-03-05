//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Christopher Bartling on 3/3/21.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop

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
                .zIndex(1)

            // DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                // RATINGS AND SIZES
                RatingsSizesDetailView()
                    .padding(.top, -10)
                    .padding(.bottom, 20)

                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/ .leading/*@END_MENU_TOKEN@*/)
                })

                // QUANTITY AND FAVORITES
                QuantityFavoriteDetailView()
                    .padding(.vertical, 15)

                // ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
            })
                .padding(.horizontal)
                .background(Color.white.clipShape(CustomShape()).padding(.top, -105))
        })
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(
                Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                      green: shop.selectedProduct?.green ?? sampleProduct.green,
                      blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                    .ignoresSafeArea(.all, edges: .all)
            )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
