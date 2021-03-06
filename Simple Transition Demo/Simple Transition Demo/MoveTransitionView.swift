//
//  MoveTransitionView.swift
//  Simple Transition Demo
//
//  Created by Mazharul Huq on 2/13/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct MoveTransitionView: View {
     @State var flag = false
        
    var body: some View {
        VStack{
            HStack{
                Image("swiftui-96x96")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .padding()
                Text("Transition in SwiftUI")
                    .font(.title)
                    .foregroundColor(.orange)
                    
                Button(action: {
                    self.flag.toggle()
                }){
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(flag ? 90 : 0))
                        .scaleEffect(flag ? 1.5:1.0)
                        .padding()
                    }
            }.padding(.bottom, 20)
                
            if self.flag {
                DetailView()
                    .transition(.move(edge: .bottom))
                    .animation(.easeIn(duration: 2))
            }
            Spacer()
        }.navigationBarTitle("Move Transition", displayMode: .automatic)
    }
}

struct MoveTransitionView_Previews: PreviewProvider {
    static var previews: some View {
        MoveTransitionView()
    }
}
