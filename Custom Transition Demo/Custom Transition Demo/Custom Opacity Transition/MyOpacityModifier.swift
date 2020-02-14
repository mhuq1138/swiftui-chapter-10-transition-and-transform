//
//  MyOpacityModifier.swift
//  Custom Transition Demo
//
//  Created by Mazharul Huq on 2/13/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct MyOpacityModifier: ViewModifier {
    let opacity: Double
    
    func body(content: Content) -> some View {
        content.opacity(opacity)
    }
}

extension AnyTransition{
    static var myOpacity: AnyTransition{
        get{
            AnyTransition.modifier(
                active: MyOpacityModifier(opacity: 0),
                identity: MyOpacityModifier(opacity: 1))
        }
    }
}
