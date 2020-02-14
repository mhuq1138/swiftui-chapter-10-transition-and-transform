//
//  RotateTranslateAndScale.swift
//  2D View Transform Dem
//
//  Created by Mazharul Huq on 2/14/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct RotateTranslateAndScale: View {
    @State private var angle:Double = 0.0
    @State private var x:CGFloat = 0.0
    @State private var y:CGFloat = 0.0
    @State private var scaleX:CGFloat = 1.0
    @State private var scaleY:CGFloat = 1.0
    
    var body: some View{
    
        VStack{
            Color.red
               .frame(width: 150, height: 100)
               .rotationEffect(Angle(degrees: angle))
               .padding()
            
            Color.blue
               .frame(width: 150, height: 100)
               .transformEffect(CGAffineTransform(translationX: x, y: y))
               .padding()
            
            Color.orange
               .frame(width: 150, height: 100)
               .transformEffect(CGAffineTransform(scaleX: scaleX, y: scaleY))
               .padding()
            
            Button("Transform"){
                withAnimation(.easeIn(duration: 2)){
                    self.angle = 45.0
                    self.x = -100
                    self.y = 30
                    self.scaleY = 1.2
                    self.scaleY = 0.5
                }
            }
        }.navigationBarTitle("Rotate Translate and Scale", displayMode: .automatic)
    }
}

struct RotateTranslateAndScale_Previews: PreviewProvider {
    static var previews: some View {
        RotateTranslateAndScale()
    }
}
