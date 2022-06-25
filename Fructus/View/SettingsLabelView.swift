//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by André Almeida on 2022-06-14.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    
    var labelText: String
    var imageText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: imageText)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", imageText: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
