//
//  CoverImageView.swift
//  AfricaApp
//
//  Created by Adriancys Jesus Villegas Toro on 11/5/23.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    let coverImage: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImage) { item in
                Image(item.name)
                .resizable()
                .scaledToFill()
            }//: ForEach
        }//: TabView
        .tabViewStyle(.page)
        
    }
}

// MARK: - Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
