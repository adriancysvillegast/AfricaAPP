//
//  AnimalDetailView.swift
//  AfricaApp
//
//  Created by Adriancys Jesus Villegas Toro on 4/7/23.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // MARK: - Hero image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // MARK: - Title
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height:6)
                            .offset(y: 24)
                    )
                // MARK: - Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                // MARK: - Galery
                Group{
                    HeadingView(headlineImage: "photo.on.rectangle.angled", headText: "Wilderness in Pictures")
                    InsectGalleryView(animal: animal)
                }
                .padding(.horizontal)
                // MARK: - Facts
                Group {
                    HeadingView(headlineImage: "questionmark.circle", headText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                // MARK: - Description
                Group {
                    HeadingView(headlineImage: "info.circle", headText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                // MARK: - Map
                
                Group {
                    HeadingView(headlineImage: "map", headText: "National Parks")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                // MARK: - Link
                
                Group{
                    HeadingView(headlineImage: "books.vertical", headText: "Learn more")
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
                
            }//:Vstack
            .navigationTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }//:Scroll
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animal: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDetailView(animal: animal[0])
        }
        .previewDevice("iPhone 11 pro")
        
    }
}
