//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Christopher Bartling on 1/22/21.
//

import SwiftUI

struct SettingsRowView: View {
    var labelText: String
    var value: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil

    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)

            HStack {
                Text(labelText)
                    .foregroundColor(Color.gray)
                Spacer()
                if value != nil {
                    Text(value!)
                }
                else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(labelText: "Foobar", value: "barfoo")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(labelText: "Foobar", value: "barfoo")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(labelText: "Foobar", linkLabel: "Barfoo", linkDestination: "www.google.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(labelText: "Foobar", linkLabel: "Barfoo", linkDestination: "www.google.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
