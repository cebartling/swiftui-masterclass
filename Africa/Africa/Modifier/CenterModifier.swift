//
//  CenterModifier.swift
//  Africa
//
//  Created by Christopher Bartling on 2/3/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
