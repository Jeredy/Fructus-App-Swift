//
//  ContentView.swift
//  Fructus
//
//  Created by André Almeida on 03/06/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROTERTIES
    var fruits: [Fruit] = fruitsData
    @State private var IsShowingSettings: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item).padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                IsShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            }//: BUTTON
                .sheet(isPresented: $IsShowingSettings) {
                    SettingsView()
                }
         )
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            
    }
}
