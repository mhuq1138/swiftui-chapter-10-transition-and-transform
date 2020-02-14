//
//  DetailView.swift
//  Combining Transition Demo
//
//  Created by Mazharul Huq on 2/13/20.
//  Copyright © 2020 Mazharul Huq. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Text("Hello from SwiftUI")
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.green).shadow(color: .gray, radius: 3))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
