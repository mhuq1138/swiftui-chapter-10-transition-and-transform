//
//  ContentView.swift
//  2D View Transform Dem
//
//  Created by Mazharul Huq on 2/14/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: AffineTransformPlayer()){
                    Text("Affine Transform Player")
                }
                
                NavigationLink(destination: RotateTranslateAndScale()){
                    Text("Rotate Translate and Scale")
                }
                
                NavigationLink(destination: CustomTranslateView()){
                    Text("Custom Translate Effect")
                }
                
            }.navigationBarTitle("2D View Transform Demo", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
