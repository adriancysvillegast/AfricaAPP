//
//  CreditsView.swift
//  AfricaApp
//
//  Created by Adriancys Jesus Villegas Toro on 13/7/23.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
            
            Text("""
    Copyright © Adriancys Villegas
    All right reserve
    Better Apps less Code
    Made in Venezuela ♡
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        }//:VStack
        .padding()
        .opacity(0.4)
        
    }
    
}

// MARK: - Preview

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
