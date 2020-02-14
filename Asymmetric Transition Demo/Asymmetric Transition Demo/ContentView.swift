//
//  ContentView.swift
//  Asymmetric Transition Demo
//
//  Created by Mazharul Huq on 2/13/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: OpacityAndScaleView()){
                    Text("Asymmetric Scale and Opacity Transition")
                }
                
                NavigationLink(destination: SlideAndMoveView()){
                    Text("Asymmetric Slide and Move Transition")
                }
                NavigationLink(destination: SlideAndCombineView()){
                    Text("Asymmetric with Combined Transition")
                }
                
            }.navigationBarTitle("Asymmetric Transition Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
