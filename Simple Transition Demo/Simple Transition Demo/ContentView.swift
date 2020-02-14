//
//  ContentView.swift
//  Simple Transition Demo
//
//  Created by Mazharul Huq on 2/13/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: SlideTransitionView()){
                    Text("Slide Transition")
                }
                
                NavigationLink(destination: MoveTransitionView()){
                    Text("Move Transition")
                }
                
                NavigationLink(destination: OffsetTransitionView()){
                    Text("Offset Transition")
                }
                
                NavigationLink(destination: OpacityTransitionView()){
                    Text("Opacity Transition")
                }
                
                NavigationLink(destination: ScaleTransitionView()){
                    Text("Scale Transition")
                }
                
                NavigationLink(destination: CustomScaleTransitionView()){
                    Text("Custom Scale Transition")
                }
                
                
            }.navigationBarTitle("Simple Transition Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
