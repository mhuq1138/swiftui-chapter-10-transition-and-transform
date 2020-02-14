//
//  CustomTranslateView.swift
//  2D View Transform Dem
//
//  Created by Mazharul Huq on 2/14/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct CustomTranslateView: View {
    @State var x:CGFloat = 0.0
    @State var y:CGFloat = 0.0
    var body: some View {
        VStack{
            Rectangle()
               .fill(Color.red)
               .frame(width: 200, height: 150)
               .modifier(translationEffect(x: x, y: y))
               .animation(.easeIn(duration: 2))
        
            Button("Animate"){
                self.x = 45
                self.y = -30
            }
        }.navigationBarTitle("Custom Translate Effect", displayMode: .automatic)
    }
}

struct transEffect: GeometryEffect  {
    var x:CGFloat
    var y:CGFloat
    
    var animatableData: AnimatablePair<CGFloat,CGFloat>{
        get { AnimatablePair(x, y)}
        set {
            x = newValue.first
            y = newValue.second
        }
    }
    func effectValue(size: CGSize) -> ProjectionTransform {
        let affineTransform = CGAffineTransform(translationX: x, y: y)
        return ProjectionTransform(affineTransform)
    }
}

func translationEffect(x:CGFloat,y:CGFloat)-> some GeometryEffect{
    return transEffect(x: x, y: y)
}

struct CustomTranslateView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTranslateView()
    }
}
