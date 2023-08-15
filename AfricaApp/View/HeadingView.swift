//
//  HeadingView.swift
//  AfricaApp
//
//  Created by Adriancys Jesus Villegas Toro on 4/7/23.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - Properties
    var headlineImage : String
    var headText: String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Image(systemName: headlineImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headText)
                .font(.title3)
                .fontWeight(.bold)
        }
    }
}

// MARK: - Preview

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headlineImage: "photo.on.rectangle.angled", headText: "wilderness in pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
