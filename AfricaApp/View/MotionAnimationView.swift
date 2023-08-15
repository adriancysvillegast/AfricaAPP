//
//  MotionAnimationView.swift
//  AfricaApp
//
//  Created by Adriancys Jesus Villegas Toro on 11/7/23.
//

import SwiftUI

struct MotionAnimationView: View {
    
    // MARK: - Properties
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    
    // MARK: - Functions
    
    //1 randomCordinate
    
    func randomCordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    //2 randomSize
    
    func randomSize() -> CGFloat {
        return CGFloat.random(in: 10...300)
    }
    //3 randomScale
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    //4 randomSpeed
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    //5 randomDelay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    // MARK: - Body
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect( isAnimating ? randomScale() : 1)
                        .position(x: randomCordinate(max: geometry.size.width / 2)  ,
                                  y: randomCordinate(max: geometry.size.height / 2)
                    )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        
                        )
                        .onAppear {
                            isAnimating = true
                        }
                }//:Loop
            }//:ZStack
            .drawingGroup()
        }//: GeometryReader
    }
}

// MARK: - Preview
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
