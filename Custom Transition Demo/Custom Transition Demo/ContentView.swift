//
//  ContentView.swift
//  Custom Transition Demo
//
//  Created by Mazharul Huq on 2/13/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: MyOpacityView()){
                    Text("Custom Opacity Transition")
                }
                
                NavigationLink(destination: MyScaleTransitionView()){
                    Text("Custom Scale Transition")
                }
                
                NavigationLink(destination: RotationTransitionView()){
                    Text("Custom Rotation Transition")
                }
            }.navigationBarTitle("Custom Transition Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
