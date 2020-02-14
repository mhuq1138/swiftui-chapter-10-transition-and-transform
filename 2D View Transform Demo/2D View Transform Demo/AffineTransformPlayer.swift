//
//  AffineTransformPlayer.swift
//  2D View Transform Dem
//
//  Created by Mazharul Huq on 2/14/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct AffineTransformPlayer: View {
    @State private var a:Double = 1.0
    @State private var b:Double = 0.0
    @State private var c:Double = 0.0
    @State private var d:Double = 1.0
    @State private var tx:Double = 0.0
    @State private var ty:Double = 0.0
    
    
    var body: some View {
        VStack{
            Spacer()
            Color.red
               .frame(width: 100, height: 150)
               .transformEffect(CGAffineTransform(a: CGFloat(a), b: CGFloat(b), c: CGFloat(c), d: CGFloat(d), tx: CGFloat(tx), ty: CGFloat(ty)))
            Spacer()
            SliderDisplay(sliderValue: $a, label: "a", lower: -1.0, upper: 1.0)
            SliderDisplay(sliderValue: $b, label: "b", lower: -1.0, upper: 1.0)
            SliderDisplay(sliderValue: $c, label: "c", lower: -1.0, upper: 1.0)
            SliderDisplay(sliderValue: $d, label: "d", lower: -1.0, upper: 1.0)
            SliderDisplay(sliderValue: $tx, label: "tx", lower: -50.0, upper: 50.0)
            SliderDisplay(sliderValue: $ty, label: "ty", lower: -50.0, upper: 50.0)
        }.navigationBarTitle("Affine Transform Player", displayMode: .automatic)
    }
}

struct AffineTransformPlayer_Previews: PreviewProvider {
    static var previews: some View {
        AffineTransformPlayer()
    }
}
