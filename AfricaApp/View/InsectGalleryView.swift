//
//  InsectGalleryView.swift
//  AfricaApp
//
//  Created by Adriancys Jesus Villegas Toro on 4/7/23.
//

import SwiftUI

struct InsectGalleryView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }//: Loop
            }//HStack
        }//:Scroll
        
        
    }
}

// MARK: - Preview

struct InsectGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animal.json")

    static var previews: some View {
        InsectGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
