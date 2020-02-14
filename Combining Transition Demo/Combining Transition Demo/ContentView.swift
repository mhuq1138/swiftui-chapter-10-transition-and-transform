//
//  ContentView.swift
//  Combining Transition Demo
//
//  Created by Mazharul Huq on 2/13/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: ScaleAndOpacityView()){
                    Text("Scale and Opacity Transition")
                }
                
                NavigationLink(destination: ScaleAndSlideView()){
                                   Text("Scale and Slide Transition")
                               }
                
                
            }.navigationBarTitle("Combined Transition Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
