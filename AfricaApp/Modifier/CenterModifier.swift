//
//  CenterModifier.swift
//  AfricaApp
//
//  Created by Adriancys Jesus Villegas Toro on 13/7/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}

