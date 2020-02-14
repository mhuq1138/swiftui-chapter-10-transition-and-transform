//
//  MyScaleModifier.swift
//  Custom Transition Demo
//
//  Created by Mazharul Huq on 2/13/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct MyScaleModifier: ViewModifier{
    let scale:CGFloat
    
    func body(content:Content)-> some View {
        content.scaleEffect(scale)
    }
}


extension AnyTransition{
    
    static func myScale(scale:CGFloat)->AnyTransition{
        return AnyTransition.modifier(
            active:MyScaleModifier(scale: 1),
            identity: MyScaleModifier(scale: scale))
    }
}
