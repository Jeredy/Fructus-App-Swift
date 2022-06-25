//
//  StartButtonView.swift
//  Fructus
//
//  Created by André Almeida on 03/06/22.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //MARK: BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        } //: BUTTON
        .accentColor(Color.white)
        
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
