//
//  ExternalWebLinkView.swift
//  AfricaApp
//
//  Created by Adriancys Jesus Villegas Toro on 6/7/23.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        GroupBox {
            HStack {
                
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https:\\wikipedia.org"))!)
                    Image(systemName: "arrow.up.right.square")
                }//:Group
                .foregroundColor(.accentColor)
            }//:HStack
        }//:GroupBox
    }
}

// MARK: - Preview
struct ExternalWebLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
