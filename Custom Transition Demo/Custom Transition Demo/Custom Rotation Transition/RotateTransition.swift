//
//  RotateTransition.swift
//  Custom Transition Demo
//
//  Created by Mazharul Huq on 2/13/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

extension AnyTransition {
    static var rotate: AnyTransition { get {
        AnyTransition.modifier(active: RotateTransition(pct: 0), identity: RotateTransition(pct: 1))
        }
    }
}

struct RotateTransition: GeometryEffect {
    var pct:Double
    
    var animatableData: Double{
        get {pct}
        set{pct = newValue}
    }
    
    func effectValue(size: CGSize) -> ProjectionTransform {
        let rotationPercent = pct
        let a = CGFloat(Angle(degrees: 90 * (1 - rotationPercent)).radians)
        
        var transform3d = CATransform3DIdentity
        transform3d.m34 = -1/max(size.width, size.height)
        transform3d = CATransform3DRotate(transform3d, a, 0, 1, 0)
        transform3d = CATransform3DTranslate(transform3d, -size.width/2.0, 0, 0)
        let affineTransform1 = ProjectionTransform(CGAffineTransform(translationX: size.width/2.0, y: size.height / 2.0))
        
        return ProjectionTransform(transform3d).concatenating(affineTransform1)
    }
}


