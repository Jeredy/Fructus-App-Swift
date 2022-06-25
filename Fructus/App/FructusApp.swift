//
//  FructusApp.swift
//  Fructus
//
//  Created by André Almeida on 03/06/22.
//

import SwiftUI

@main
struct FructusApp: App {
    //MARK: - PROPERTIES
        
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    //MARK: - BODY
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
           
        }
    }
}
