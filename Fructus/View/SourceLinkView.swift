//
//  SourceLinkView.swift
//  Fructus
//
//  Created by André Almeida on 2022-06-14.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "http://google.com")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
        .font(.footnote)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
