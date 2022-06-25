//
//  SettingsView.swift
//  Fructus
//
//  Created by André Almeida on 2022-06-14.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: SECTION 1
                    GroupBox(label:
                        SettingsLabelView(labelText: "Fructus", imageText: "info.circle")
                    )
                    {
                        Divider().padding(.vertical, 10)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruit are naturally low in fat, sodium and calories. None have cholesterol. Fruits are source of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.").font(.footnote)
                        }
                        
                    }
                    
                    //MARK: SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", imageText: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer a blandit sapien. Nulla sed dictum odio, et vulputate mauris. Nullam tempor nisl vitae risus laoreet, sit amet iaculis arcu facilisis. Suspendisse elementum ipsum ac lorem gravida, venenatis sagittis velit fermentum. ")
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
                        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    
                    //MARK: SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", imageText: "apps.iphone")) {
                        SettingsRowView(name: "Developer", content: "Jhon / Jane")
                        SettingsRowView(name: "SwiftUI", linkLabel: "SwiftUI", linkDestination: "google.com")
                    }
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                Button(
                    action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                    Image(systemName: "xmark")
                })
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
