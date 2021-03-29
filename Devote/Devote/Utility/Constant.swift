//
//  Constant.swift
//  Devote
//
//  Created by Christopher Bartling on 3/21/21.
//

import SwiftUI

let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]),
                          startPoint: .topLeading,
                          endPoint: .bottomTrailing)
}
