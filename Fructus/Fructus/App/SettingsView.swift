//
//  SettingsView.swift
//  Fructus
//
//  Created by Christopher Bartling on 1/22/21.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/ .center/*@END_MENU_TOKEN@*/, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)

                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }

                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)

                        Text("If you wish, you can restart the application by toggling the switch in this box. By doing this, the onboarding experience will be enabled.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)

                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }

                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        SettingsRowView(labelText: "Developer", value: "John / Jane")
                        SettingsRowView(labelText: "Designer", value: "Robert Petras")
                        SettingsRowView(labelText: "Compatibility", value: "iOS 14")
                        SettingsRowView(labelText: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(labelText: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(labelText: "SwiftUI", value: "2.0")
                        SettingsRowView(labelText: "Version", value: "1.1.0")
                    }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 12 Pro")
    }
}
